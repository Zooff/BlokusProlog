init :-
  consult('piece.pl'),
  consult('output.pl').

blokus :-
  initialize(Board),
  list(JList),
  list(JList2),
  play_blo(Board, x, JList, JList2).

initialize(Board) :-
  create_board(196, Board).

create_board(1 , [e]).
create_board(Size, [e|List]):-
  Size > 1,
  NSize is Size - 1,
  create_board(NSize, List).


% Recursive predicate that implement player turn %

play_blo(Board, Player, J1List, J2List) :-
  draw_board(Board),

  (Player == x ->
    p(Board, 0, Player, J1List, [], Li), write(Li);
    p(Board, 0, Player, J2List, [], Li)
  ),

  %(L == [] -> write('End Game'); write('Continue')),
  %nl,

  repeat,
  (Player == x ->
    write('Piece Restante J1 : '), write(J1List);
    write('Piece Restante J2 : '), write(J2List)
  ),
  nl,

  % Select a Piece
  write('Piece : '),
  read(Piece),
  (Player == x ->
    piece_in_list(Piece, J1List);
    piece_in_list(Piece, J2List)
  ),

  % Choise Her rotation
  write('Rotation : '),
  read(Rotation),
  Rotation > 0,
  Rotation < 5,

  % Select Position

  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),

  % Place Her on the Board
  (select_move(Board, Piece, CoordX, CoordY, Player, Rotation, NewBoard), !; fail),

  % Delete her from the list of piece
  ( Player == x ->
      delete_piece(Piece, J1List, NewJ1List), NewJ2List = J2List;
      delete_piece(Piece, J2List, NewJ2List), NewJ1List = J1List
  ),

  % Change the player
  invert_player(Player, Player2),

  % Launch the other player turn
  play_blo(NewBoard, Player2, NewJ1List, NewJ2List).

%play_blo(Board, Player, J1List, J2List) :-
%  gameover(J1List, J2List),
%  calcul_point(J1List, J1Score, J2List, J2Score),
%  ( J1Score < J2List ->
%    write('J1 win the game');
%    write('J2 win the game')
%  ).

gameover(List1, List2 ) :-
  List1 \= [],
  List2 \= [].

delete_piece(Piece, [Piece|List], List).
delete_piece(Piece, [H1, H2|R], [H1|List]) :-
  H1 \= Piece,
  delete_piece(Piece, [H2|R], List).


invert_player(x, o).
invert_player(o,x).

piece_in_list(Piece, [Piece|_]).
piece_in_list(Piece, [H|List]) :-
  Piece \= H,
  piece_in_list(Piece, List).


can_play(_, 196, _, _, Acc, Acc) :- !.

can_play(Board, Count, Player, JList, Acc, Li) :-
  Count < 196,
  convertToCoord(CoordX, CoordY, Count),
  allpiece(Board, 1, CoordX, CoordY, [], Li, JList),
  append(Acc, Li, NewAcc),
  NCount is Count + 1,
  can_play(Board, NCount, Player, JList, NewAcc, Li).

allpiece(_, 22, _, _, Acc, Acc, _) :- !.

allpiece(Board,Piece, CoordX, CoordY, Acc, Li, JList) :-
  Piece < 22,
  findall((CoordX,CoordY, Piece, Rotation), select_move(Board, Piece, CoordX, CoordY, Player, Rotation, N), L),
  write(L),
  append(Acc, L, NewAcc),
  NPiece is Piece + 1,
  allpiece(Board, NPiece, CoordX, CoordY, NewAcc, Li, JList).

p(_, 196, _, _, Acc, Acc) :- !.

p(Board, Count, Player, JList, Acc, L) :-
  Count < 196,
  convertToCoord(X, Y, Count),
  findall((X, Y, Piece, Rot),(select_move(Board, Piece, X, Y, Player, Rot, Nb),(piece_in_list(Piece, JList))), L1),
  append(Acc, L1, L2),
  NCount is Count + 1,
  p(Board, NCount, Player, JList, L2, L).

list([21,20]).
