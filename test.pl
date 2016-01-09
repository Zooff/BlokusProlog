blokus :-
  initialize(Board),
  play_blo(Board, x).

initialize(Board) :-
  create_board(400, Board).


create_board(1 , [e]).
create_board(Size, [e|List]):-
  Size > 1,
  NSize is Size - 1,
  create_board(NSize, List).


play_blo(Board, Player) :-
  draw_board(Board),

  repeat,
  write('Piece : '),
  read(Piece),
  write('Rotation :'),
  read(Rotation),
  (select_move(Board, Piece, Player, Rotation, NewBoard), !; fail),
  invert_player(Player, Player2),
  play_blo(NewBoard, Player2).


invert_player(x, o).
invert_player(o,x).
