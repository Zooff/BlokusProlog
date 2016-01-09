
% change the player %

invert_player(x, o).
invert_player(o, x).



% Launch the game %

blokus :-
  initialize(Board),
  initialize_piece(NumberOfPiece, ListOfPiece),
  draw_board(Board),
  play(Board , NumberOfPiece, ListOfPiece, NumberOfPiece, ListOfPiece, Player).


% Recursive predicate that implement player one turn %

play(Board, J1NumberOfPiece, J1ListOfPiece, J2NumberOfPiece, J2ListOfPiece, Player) :-

  Player == x,

  % Player can play ? %

  can_play(J2NumberOfPiece, CanPlay),

  % Select a piece %

  select_piece(J1ListOfPiece, NewJ1ListOfPiece, Piece, Player, CanPlay),

  % Select the position of the piece %

  select_move(Board, CoordX, CoordY, Piece, Player, NewBoard, CanPlay),

  % Display the board %

  draw_board(NewBoard),

  % Verify if the party is finish or not %

  gameover(NewBoard, J1NumberOfPiece, J2NumberOfPiece, Player)

  % Change the player %

  invert_player(Player, NPlayer),

  % Next player play %

  number_piece(J1NumberOfPiece, NewJ1NumberOfPiece, CanPlay),

  play(NewBoard, NewJ1NumberOfPiece, NewJ1ListOfPiece, J2NumberOfPiece, J2ListOfPiece, NPlayer).




  % Recursive predicate that implement player two turn %

play(Board, J1NumberOfPiece, J1ListOfPiece, J2NumberOfPiece, J2ListOfPiece, Player) :-

  Player == o,

  % Player can play ? %

  ( can_play(J2NumberOfPiece) ->
  % Select a piece %

  select_piece(J2ListOfPiece, NewJ2ListOfPiece, Piece, Player, CanPlay),

  % Select the position of the piece %

  select_move(Board, CoordX, CoordY, Piece, Player, NewBoard, CanPlay),

  % Display the board %

  draw_board(NewBoard),

  % Verify if the party is finish or not %

  gameover(NewBoard, J1NumberOfPiece, J2NumberOfPiece, Player);)

  % Change the player %

  invert_player(Player, NPlayer)

  % Next player play %

  number_piece(J2NumberOfPiece, NewJ2NumberOfPiece, CanPlay),

  play(NewBoard, J1NumberOfPiece, J1ListOfPiece, NewJ2NumberOfPiece, NewJ2ListOfPiece, NPlayer).




% initialize the board of the game %

initialize(Board) :-
  create_board(400, Board).

create_board(1, [e]).
create_board(Size, [e|List]):-
  Size > 1
  NSize is Size - 1,
  create_board(NSize, List).



can_play(J2NumberOfPiece) :-
  J2NumberOfPiece > 0.

gameover(Board, 0,0,_).
