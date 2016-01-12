init :-
  consult('piece.pl'),
  consult('output.pl').

blokus(Ai) :-
  initialize(Board),
  list(JList),
  list(JList2),
  play_blo(Board, x, JList, JList2, Ai).

initialize(Board) :-
  create_board(196, Board).

create_board(1 , [e]).
create_board(Size, [e|List]):-
  Size > 1,
  NSize is Size - 1,
  create_board(NSize, List).


% Recursive predicate that implement player turn %

play_blo(Board, Player, J1List, J2List, Ai) :-
  draw_board(Board),

  (Player == x ->
    p(Board, 0, Player, J1List, [], Li);
    p(Board, 0, Player, J2List, [], Li)
  ),
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
  (Ai == 1 ->
    ai_move(NewBoard,Player2, NewJ1List, NewJ2List, Ai);
    play_blo(NewBoard, Player2, NewJ1List, NewJ2List, Ai)
  ).

ai_move(Board, Player, J1List, J2List, Ai) :-

  draw_board(Board),

  (Player == x ->
    p(Board, 0, Player, J1List, [], Li);
    p(Board, 0, Player, J2List, [], Li)
  ),

  %(Player == x ->
  %  first_elem(Piece, J1List);
  %  first_elem(Piece, J2List)
  %),

%%%%%%%%%% BUG ICI %%%%%%%%%

  first_elem2(K, Li),
  write(K),

  play_move_ai(K, X, Y, Piece2, Rot),

  select_move(Board, Piece2, X, Y, Player, Rot, NewBoard),

  ( Player == x ->
      delete_piece(Piece2, J1List, NewJ1List), NewJ2List = J2List;
      delete_piece(Piece2, J2List, NewJ2List), NewJ1List = J1List
  ),
  invert_player(Player, Player2),
  play_blo(NewBoard, Player2, NewJ1List, NewJ2List, Ai).



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

% Say if the piece is in the list of piece %

piece_in_list(Piece, [Piece|_]).
piece_in_list(Piece, [H|List]) :-
  Piece \= H,
  piece_in_list(Piece, List).



play_move_ai([X, Y, Piece, Rot], X, Y,Piece, Rot).


% List all the possible move %

p(_, 196, _, _, Acc, Acc) :- !.

p(Board, Count, Player, JList, Acc, L) :-
  Count < 196,
  convertToCoord(X, Y, Count),
  findall((X, Y, Piece, Rot),(select_move(Board, Piece, X, Y, Player, Rot, Nb),(piece_in_list(Piece, JList))), L1),
  append(Acc, L1, L2),
  NCount is Count + 1,
  p(Board, NCount, Player, JList, L2, L).

tolist([X,Y,Piece,Rot], X,Y,Piece,Rot).

first_elem(Elem, [Elem|_]).

first_elem2([X,Y,Piece,Rot], [(X,Y,Piece,Rot)|_]).

% List of the piece %
list([21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]).
