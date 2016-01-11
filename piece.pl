




%%%%%%%%%%%%%%%%%%%%
% Piece monimo : X %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 1,  Player, _, NewBoard) :-

  write('CoordX : '),
  read(CoordX),
  write('CoordY : '),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write(0) ),

  ( (Val \= 60 , Val \= 135 ) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 15, Player) ;
      verif_move2(Board, 0, Val + 13, Player) )
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece domono     %
%                  %
% rotation 1       %
%       XX         %
% rotation 2       %
%        X         %
%        X         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 2, Player, 1, NewBoard) :-

  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  NVal is Val + 1,
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, NewBoard).

  select_move(Board, 2, Player, 2, NewBoard) :-

    write("CoordX : "),
    read(CoordX),
    write("CoordY : "),
    read(CoordY),
    convertToVal(CoordX, CoordY, Val),
    NVal is Val + 20,
    change_board(Board, 0, Val, Player, Board1),
    change_board(Board1, 0, NVal, Player, NewBoard).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    X                 XX          %
  %    XX   XXX    XX    XXX         %
  %    XX   XX     XX                %
  %                X                 %
  %                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 13, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX -1, CoordY, Case),
  convertToVal(CoordX - 1, CoordY - 1, Case1),
  convertToVal(CoordX , CoordY + 2, Case2),
  convertToVal(CoordX + 1, CoordY + 2, Case3),
  convertToVal(CoordX + 2, CoordY , Case4),
  convertToVal(CoordX + 2, CoordY + 1, Case5),
  convertToVal(CoordX + 1, CoordY + 2, Case6),
  convertToVal(CoordX, CoordY + 2, Case7),
  convertToVal(CoordX - 1, CoordY + 1, Case8),
  convertToVal(CoordX + 1, CoordY + 1, Case9),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),
  verify_case(Board, Case, Player),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 13, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 13, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY , NVal3),
  convertToVal(CoordX, CoordY + 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 13, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX , CoordY - 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    XX                X X         %
  %     X   XXX    XX    XXX         %
  %    XX   X X    X                 %
  %                XX                %
  %                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 14, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 14, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY - 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 14, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 14, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY + 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    X                   X         %
  %    XX   XXXX     X    XXXX       %
  %    X      X      X               %
  %    X            XX               %
  %                  X               %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 15, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val + 42 < 196 -> verif_move(Board, 0, Val + 42, Player) ; write(0) ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0)),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 46, Val \= 74, Val \= 88, Val \= 135, Val \= 136, Val \= 163, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 15, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY , NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0)),
  (Val + 14 + 1 < 196 0 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 74, Val \= 58, Val \= 135, Val \= 136, Val \= 134, Val \= 133, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 15, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX , CoordY - 2, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY, NVal3),
  convertToVal(CoordX, CoordY + 1, NVal4),

  (Val + 42 < 196 -> verif_move(Board, 0, Val + 42, Player) ; write(0) ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0)),
  (Val + 28 - 1 < 196  -> verif_move(Board, 0, Val + 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 59, Val \= 46, Val \= 74, Val \= 88, Val \= 135, Val \= 134, Val \= 163, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player);
      verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 15, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 2, CoordY, NVal4),

  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0)),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 46, Val \= 58, Val \= 135, Val \= 136, Val \= 134, Val \= 133, Val \= 121) ->
    ( verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

%%%%%%%%%%%%%%%%%%%%
% piece pentaminos %
%                  %
%     X            %
%     X            %
%    XXX           %
%                  %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 16, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY - 2, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 42 >= 0 ->  verif_move(Board, 0, Val - 42, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0)),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 46, Val \= 32, Val \= 135, Val \= 136, Val \= 134, Val \= 121, Val \= 107) ->
    ( verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


select_move(Board, 16, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX + 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0)),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 62, Val \= 46, Val \= 74, Val \= 135, Val \= 136, Val \= 137, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 16, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 42 < 196 ->  verif_move(Board, 0, Val + 42, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0)),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 74, Val \= 88, Val \= 135, Val \= 136, Val \= 134, Val \= 149, Val \= 163) ->
    ( verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 16, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val - 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0)),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write(0)),

  ( (Val \= 60, Val \= 59, Val \= 58, Val \= 46, Val \= 74, Val \= 135, Val \= 134, Val \= 133, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%    X                      X      %
%    X                      X      %
%    XXX   XXX    XXX     XXX      %
%          X        X              %
%          X        X              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 17, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX + 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY - 1, NVal3),
  convertToVal(CoordX, CoordY - 2, NVal4),


  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 42 >= 0 ->  verif_move(Board, 0, Val - 42, Player) ; write(0) ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write(0) ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0)),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0)),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 62, Val \= 46, Val \= 32, Val \= 135, Val \= 136, Val \= 137, Val \= 121, Val \= 107) ->
    ( verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 - 1, Player))
    ; writeln(no) ),


  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 17, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX + 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 42 < 196 ->  verif_move(Board, 0, Val + 42, Player) ; write(0) ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 + 2 >= 0 ->  verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0)),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0)),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 61, Val \= 62, Val \= 74, Val \= 88, Val \= 135, Val \= 136, Val \= 137, Val \= 149, Val \= 163) ->
    ( verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val - 14 - 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 17, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX - 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 42 < 196 ->  verif_move(Board, 0, Val + 42, Player) ; write(0) ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 ->  verif_move(Board, 0, Val - 14 - 2, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0)),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0)),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 59, Val \= 58, Val \= 74, Val \= 88, Val \= 135, Val \= 134, Val \= 133, Val \= 149, Val \= 163) ->
    ( verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val - 14 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 17, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX - 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY - 1, NVal3),
  convertToVal(CoordX, CoordY - 2, NVal4),

  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 42 >= 0 ->  verif_move(Board, 0, Val - 42, Player) ; write(0) ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 - 2, Player) ; write(0)),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0)),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0)),

  ( (Val \= 60, Val \= 59, Val \= 58, Val \= 46, Val \= 32, Val \= 135, Val \= 134, Val \= 133, Val \= 121, Val \= 107) ->
    ( verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 + 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    XX                  XX        %
  %     XX                XX         %
  %      X     X    X     X          %
  %           XX    XX               %
  %          XX      XX              %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 18, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY -1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 - 2, Player) ; write(0) ),
  (Val + 14 + 2 < 196 ->  verif_move(Board, 0, Val + 14 + 2, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 61, Val \= 75, Val \= 46, Val \= 45, Val \= 135, Val \= 136, Val \= 150, Val \= 121, Val \= 120) ->
    ( verif_move2(Board, 0, Val + 28, Player);
      verif_move2(Board, 0, Val + 28 + 2, Player);
      verif_move2(Board, 0, Val + 14 - 1, Player);
      verif_move2(Board, 0, Val - 2, Player);
      verif_move2(Board, 0, Val - 28 - 2, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 18, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 - 2 < 196 ->  verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 61, Val \= 74, Val \= 73, Val \= 47, Val \= 135, Val \= 136, Val \= 149, Val \= 148, Val \= 122) ->
    ( verif_move2(Board, 0, Val + 28 - 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val - 2, Player);
      verif_move2(Board, 0, Val - 28 + 2, Player);
      verif_move2(Board, 0, Val - 28, Player);
      verif_move2(Board, 0, Val - 14 - 1, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 18, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 14 >= 0 ->  verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 - 2, Player) ; write(0) ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 59, Val \= 74, Val \= 75, Val \= 45, Val \= 135, Val \= 134, Val \= 139, Val \= 140, Val \= 120) ->
    ( verif_move2(Board, 0, Val + 28, Player);
      verif_move2(Board, 0, Val + 28 - 2, Player);
      verif_move2(Board, 0, Val - 14 + 1, Player);
      verif_move2(Board, 0, Val + 2, Player);
      verif_move2(Board, 0, Val + 28 + 2, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 18, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),


    (Val + 14 < 196 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
    (Val - 28 >= 0 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
    (Val - 2 >= 0 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
    (Val + 1 < 196 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
    (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
    (Val - 14 + 2 >= 0 ->  verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
    (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0) ),
    (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
    (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0) ),


    ( (Val \= 60, Val \= 59, Val \= 73, Val \= 46, Val \= 47, Val \= 135, Val \= 134, Val \= 148, Val \= 121, Val \= 122) ->
      ( verif_move2(Board, 0, Val + 28 - 2, Player);
        verif_move2(Board, 0, Val + 28, Player);
        verif_move2(Board, 0, Val + 14 + 2, Player);
        verif_move2(Board, 0, Val + 2, Player);
        verif_move2(Board, 0, Val - 28 + 2, Player);
        verif_move2(Board, 0, Val - 28 - 1, Player);
        verif_move2(Board, 0, Val - 14 - 2, Player))
      ; writeln(no) ),


  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

  %%%%%%%%%%%%%%%%%%%
  %                 %
  %    X            %
  %    XXX   XX     %
  %      X   X      %
  %         XX      %
  %                 %
  %%%%%%%%%%%%%%%%%%%


select_move(Board, 19, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 2, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0) ),
  (Val - 14 - 2 >= 0 ->  verif_move(Board, 0, Val - 14 - 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0) ),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),

  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 45, Val \= 75, Val \= 135, Val \= 134, Val \= 136, Val \= 120, Val \= 150) ->
    ( verif_move2(Board, 0, Val - 26, Player) ;
      verif_move2(Board, 0, Val - 28, Player) ;
      verif_move2(Board, 0, Val + 26, Player) ;
      verif_move2(Board, 0, Val + 28, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 12, Player) )
    ; writeln(no) ),


  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 19, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),


  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write(0) ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0) ),
  (Val - 14 + 2 >= 0 ->  verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),

  ( (Val \= 60, Val \= 46, Val \= 74, Val \= 47, Val \= 73, Val \= 135, Val \= 149, Val \= 121, Val \= 122, Val \= 148) ->
    ( verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 30, Player) ;
      verif_move2(Board, 0, Val + 2, Player) ;
      verif_move2(Board, 0, Val + 29, Player) ;
      verif_move2(Board, 0, Val + 26, Player) ;
      verif_move2(Board, 0, Val - 2, Player) )
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


select_move(Board, 19, Player, 3, NewBoard) :-
  select_move(Board, 19, Player, 1, NewBoard).

select_move(Board, 19, Player, 4, NewBoard) :-
  select_move(Board, 19, Player, 2, NewBoard).



  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    X                   X         %
  %    XXX    XX           XX        %
  %     X    XX     X     XX         %
  %           X    XXX               %
  %                  X               %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 20, Player, 1, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 74, Val \= 45, Val \= 135, Val \= 134, Val \= 136, Val \= 149, Val \= 120) ->
    ( verif_move2(Board, 0, Val - 28, Player);
      verif_move2(Board, 0, Val - 26, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 20, Player, 2, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY, NVal3),
  convertToVal(CoordX , CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write(0) ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 59, Val \= 46, Val \= 74, Val \= 47, Val \= 135, Val \= 134, Val \= 121, Val \= 149, Val \= 122) ->
    ( verif_move2(Board, 0, Val - 28, Player);
      verif_move2(Board, 0, Val - 26, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 20, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write(0) ),
  (Val + 14 + 2 < 196 ->  verif_move(Board, 0, Val + 14 + 2, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 46, Val \= 75, Val \= 135, Val \= 134, Val \= 136, Val \= 121, Val \= 140) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player);
      verif_move2(Board, 0, Val + 28, Player);
      verif_move2(Board, 0, Val + 28 + 2, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 20, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write(0) ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write(0) ),


  ( (Val \= 60, Val \= 61, Val \= 46, Val \= 74, Val \= 73, Val \= 135, Val \= 134, Val \= 121, Val \= 149, Val \= 148) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 28 - 2, Player);
      verif_move2(Board, 0, Val - 2, Player))
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

%%%%%%%%%%%%%%%%%%%%
% piece pentaminos %
%                  %
%     X            %
%    XXX           %
%     X            %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 21, Player, Rotation, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write(0) ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write(0) ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write(0) ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write(0) ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write(0) ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write(0) ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write(0) ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write(0) ),

  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 46, Val \= 74, Val \= 135, Val \= 134, Val \= 136, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 12, Player) )
    ; writeln(no) ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


% Verify that a piece can be played %

verify_move(Board, Val).


% Convert a Coor in a value %

convertToVal(X, Y, Val) :-
  X >= 0,
  Y >= 0,
  Y < 14,
  X < 14,
  NVal is Y * 14,
  Val is NVal + X.

% Verify that the case is not a player case %

verif_move([_|R], Count, Val, Player) :-
  Count < Val, !,
  NCount is Count + 1,
  verif_move(R, NCount, Val, Player).
verif_move([H|_], _, _, Player) :-
  %write(H),nl,
  H \= Player.

 % Verify that the case is a player case %

verif_move2([_|R], Count, Val, Player) :-
  Count < Val, !,
  NCount is Count + 1,
  verif_move2(R, NCount, Val, Player).
verif_move2([H|_], _, _, Player) :-
  %writeln(H),
  H = Player.


% Change one point of the board %

change_board([H|R], Val, Val, Player, [Player|R]) :-
  H = e.
change_board([H|R], Count,Val, Player, [H|NewBoard]) :-
  Count < Val,
  NCount is Count +1,
  change_board(R, NCount, Val, Player, NewBoard).
