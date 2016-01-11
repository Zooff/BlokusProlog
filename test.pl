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

  % Place Her on the Board
  (select_move(Board, Piece, Player, Rotation, NewBoard), !; fail),

  % Delete her from the list of piece
  ( Player == x ->
      delete_piece(Piece, J1List, NewJ1List), NewJ2List = J2List;
      delete_piece(Piece, J2List, NewJ2List), NewJ1List = J1List
  ),

  % Change the player
  invert_player(Player, Player2),

  % Launch the other player turn
  play_blo(NewBoard, Player2, NewJ1List, NewJ2List).

play_blo(Board, Player, J1List, J2List) :-
  gameover(J1List, J2List),
  calcul_point(J1List, J1Score, J2List, J2Score),
  ( J1Score < J2List ->
    write('J1 win the game');
    write('J2 win the game')
  ).

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

list([21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1]).
