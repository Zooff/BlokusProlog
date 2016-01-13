
%%%%%%%%%%%%%%%%%%%%
% Piece monimo : X %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 1, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),

  ( (Val \= 60 , Val \= 135 ) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 15, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, NewBoard).

select_move(Board, 1, CoordX, CoordY, Player, 2, NewBoard) :-
  select_move(Board, 1, CoordX, CoordY, Player, 1, NewBoard).

select_move(Board, 1, CoordX, CoordY, Player, 3, NewBoard) :-
  select_move(Board, 1, CoordX, CoordY, Player, 1, NewBoard).

select_move(Board, 1, CoordX, CoordY, Player, 4, NewBoard) :-
  select_move(Board, 1, CoordX, CoordY, Player, 1, NewBoard).



%%%%%%%%%%%%%%%%%%%%
% piece domono     %
%                  %
% rotation 1       %
%       XX         %
% rotation 2       %
%        X         %
%        X         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 2, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 135 , Val \= 134) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, NewBoard).

select_move(Board, 2, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),

  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 135 , Val \= 121) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece triominos  %
%                  %
% rotation 1       %
%       XXX        %
% rotation 2       %
%        X         %
%        X         %
%        X         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 3, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),

  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 13 < 196 ->  verif_move(Board, 0, Val + 13, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 135 , Val \= 134 , Val \= 136) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 26, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, NewBoard).

select_move(Board, 3, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY + 1, NVal2),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 ->  verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 74 , Val \= 135 , Val \= 121 , Val \= 149) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece triominos  %
%                  %
% rotation 1       %
%       X          %
%       XX         %
% rotation 2       %
%       XX         %
%       X          %
% rotation 3       %
%       XX         %
%        X         %
% rotation 4       %
%        X         %
%       XX         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 4, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 ->  verif_move(Board, 0, Val + 15, Player) ; write('') ),

  ( (Val \= 60 , Val \= 74 , Val \= 59 , Val \= 135 , Val \= 149 , Val \= 134) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, NewBoard).

select_move(Board, 4, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 ->  verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 59 , Val \= 135 , Val \= 121 , Val \= 134) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, NewBoard).

select_move(Board, 4, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),

  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 ->  verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 61 , Val \= 135 , Val \= 121 , Val \= 136) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, NewBoard).

select_move(Board, 4, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),

  ( (Val \= 60 , Val \= 74 , Val \= 61 , Val \= 135 , Val \= 136 , Val \= 149) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 15, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece tetrominos %
%                  %
% rotation 1       %
%     XXXX         %
%                  %
% rotation 2       %
%      X           %
%      X           %
%      X           %
%      X           %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 5, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX + 2, CoordY, NVal3),

  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),

  ( (Val \= 60 , Val \= 58 , Val \= 59 , Val \= 61 , Val \= 135 , Val \= 133 , Val \= 134 , Val \= 136) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 11, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 17, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 5, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY + 1, NVal2),
  convertToVal(CoordX, CoordY + 2, NVal3),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),
  (Val + 42 < 196 -> verif_move(Board, 0, Val + 40, Player) ; write('') ),

  ( (Val \= 60 , Val \= 32 , Val \= 46 , Val \= 74 , Val \= 135 , Val \= 107 , Val \= 121 , Val \= 149) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val + 41, Player) ;
      verif_move2(Board, 0, Val + 43, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece tetrominos %
%                  %
% rotation 1       %
%      X           %
%      X           %
%     XX           %
% rotation 2       %
%      X           %
%      XXX         %
% rotation 3       %
%      XX          %
%      X           %
%      X           %
% rotation 4       %
%      XXX         %
%        X         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 6, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY - 2, NVal3),

  (Val - 42 >= 0 -> verif_move(Board, 0, Val - 42, Player) ; write('') ),
  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 74 , Val \= 88 , Val \= 135 , Val \= 136 , Val \= 149 , Val \= 163) ->
    ( verif_move2(Board, 0, Val - 43, Player) ;
      verif_move2(Board, 0, Val - 41, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 15, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 6, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX + 2, CoordY, NVal3),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 58 , Val \= 74 , Val \= 135 , Val \= 134 , Val \= 133 , Val \= 149) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 11, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 17, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 6, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX, CoordY + 1, NVal2),
  convertToVal(CoordX, CoordY + 2, NVal3),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),
  (Val + 42 < 196 -> verif_move(Board, 0, Val + 42, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 46 , Val \= 32 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 107) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 41, Player) ;
      verif_move2(Board, 0, Val + 43, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 6, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX - 2, CoordY, NVal3),

  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 62 , Val \= 46 , Val \= 135 , Val \= 136 , Val \= 137 , Val \= 121) ->
    ( verif_move2(Board, 0, Val - 17, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 11, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece tetrominos %
%                  %
% rotation 1       %
%      X           %
%      XX          %
%      X           %
% rotation 2       %
%      XXX         %
%       X          %
% rotation 3       %
%       X          %
%      XX          %
%       X          %
% rotation 4       %
%       X          %
%      XXX         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 7, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 46 , Val \= 74 , Val \= 135 , Val \= 134 , Val \= 149 , Val \= 121) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 7, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),

  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 46 , Val \= 135 , Val \= 134 , Val \= 136 , Val \= 121) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 7, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 46 , Val \= 74 , Val \= 135 , Val \= 136 , Val \= 149 , Val \= 121) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 7, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 74 , Val \= 135 , Val \= 134 , Val \= 136 , Val \= 149) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece tetrominos %
%                  %
% rotation 1       %
%      XX          %
%      XX          %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 8, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX, CoordY + 1, NVal2),
  convertToVal(CoordX + 1, CoordY + 1, NVal3),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 46 , Val \= 45 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 120) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 30, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece tetrominos %
%                  %
% rotation 1       %
%      XX          %
%       XX         %
%                  %
% rotation 2       %
%        X         %
%       XX         %
%       X          %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 9, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY - 1, NVal3),

  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 74 , Val \= 75 , Val \= 135 , Val \= 134 , Val \= 149 , Val \= 150) ->
    ( verif_move2(Board, 0, Val - 30, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 2, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).

select_move(Board, 9, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY - 1, NVal3),

  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 46 , Val \= 73 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 148) ->
    ( verif_move2(Board, 0, Val - 28, Player) ;
      verif_move2(Board, 0, Val - 26, Player) ;
      verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece pentaminos %
%                  %
% rotation 1       %
%    XXXXX         %
% rotation 2       %
%      X           %
%      X           %
%      X           %
%      X           %
%      X           %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 10, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX - 2, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 2, CoordY, NVal4),

  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write('') ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 58 , Val \= 61 , Val \= 62 , Val \= 135 , Val \= 134 , Val \= 133 , Val \= 136 , Val \= 137) ->
    ( verif_move2(Board, 0, Val - 17, Player) ;
      verif_move2(Board, 0, Val - 11, Player) ;
      verif_move2(Board, 0, Val + 11, Player) ;
      verif_move2(Board, 0, Val + 17, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 10, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY - 2, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 42 >= 0 -> verif_move(Board, 0, Val - 42, Player) ; write('') ),
  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),
  (Val + 42 < 196 -> verif_move(Board, 0, Val + 42, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 32 , Val \= 74 , Val \= 88 , Val \= 135 , Val \= 121 , Val \= 107 , Val \= 149 , Val \= 163) ->
    ( verif_move2(Board, 0, Val - 43, Player) ;
      verif_move2(Board, 0, Val - 41, Player) ;
      verif_move2(Board, 0, Val + 41, Player) ;
      verif_move2(Board, 0, Val + 43, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece pentaminos %
%                  %
% rotation 1       %
%       X          %
%       X          %
%       X          %
%      XX          %
% rotation 2       %
%      X           %
%      XXXX        %
% rotation 3       %
%      XX          %
%      X           %
%      X           %
%      X           %
% rotation 4       %
%     XXXX         %
%        X         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 11, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY - 2, NVal3),
  convertToVal(CoordX, CoordY - 3, NVal4),

  (Val - 56 >= 0 -> verif_move(Board, 0, Val - 56, Player) ; write('') ),
  (Val - 43 >= 0 -> verif_move(Board, 0, Val - 43, Player) ; write('') ),
  (Val - 41 >= 0 -> verif_move(Board, 0, Val - 41, Player) ; write('') ),
  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 74 , Val \= 88 , Val \= 102 , Val \= 135 , Val \= 136 , Val \= 149 , Val \= 163 , Val \= 177) ->
    ( verif_move2(Board, 0, Val - 57, Player) ;
      verif_move2(Board, 0, Val - 55, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 15, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 11, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX + 2, CoordY, NVal3),
  convertToVal(CoordX + 3, CoordY, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 11 >= 0 -> verif_move(Board, 0, Val - 11, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 4 < 196 -> verif_move(Board, 0, Val + 4, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),
  (Val + 17 < 196 -> verif_move(Board, 0, Val + 17, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 58 , Val \= 57 , Val \= 74 , Val \= 135 , Val \= 134 , Val \= 133 , Val \= 132 , Val \= 149) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 10, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 18, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 11, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX, CoordY + 1, NVal2),
  convertToVal(CoordX, CoordY + 2, NVal3),
  convertToVal(CoordX, CoordY + 3, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),
  (Val + 41 < 196 -> verif_move(Board, 0, Val + 41, Player) ; write('') ),
  (Val + 43 < 196 -> verif_move(Board, 0, Val + 43, Player) ; write('') ),
  (Val + 56 < 196 -> verif_move(Board, 0, Val + 56, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 46 , Val \= 32 , Val \= 18 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 107 , Val \= 93) ->
    ( verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 55, Player) ;
      verif_move2(Board, 0, Val + 57, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 11, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX - 2, CoordY, NVal3),
  convertToVal(CoordX - 3, CoordY, NVal4),

  (Val - 17 >= 0 -> verif_move(Board, 0, Val - 17, Player) ; write('') ),
  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 4 >= 0 -> verif_move(Board, 0, Val - 4, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 11 < 196 -> verif_move(Board, 0, Val + 11, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 62 , Val \= 63 , Val \= 46 , Val \= 135 , Val \= 136 , Val \= 137 , Val \= 138 , Val \= 121) ->
    ( verif_move2(Board, 0, Val - 18, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 10, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


%%%%%%%%%%%%%%%%%%%%
% piece pentaminos %
%                  %
% rotation 1       %
%       X          %
%       X          %
%      XX          %
%      X           %
% rotation 2       %
%      XX          %
%       XXX        %
% rotation 3       %
%       X          %
%      XX          %
%      X           %
%      X           %
% rotation 4       %
%     XXX          %
%       XX         %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 12, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY + 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY - 1, NVal3),
  convertToVal(CoordX + 1, CoordY - 2, NVal4),

  (Val - 41 >= 0 -> verif_move(Board, 0, Val - 41, Player) ; write('') ),
  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 26 >= 0 -> verif_move(Board, 0, Val - 26, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 46 , Val \= 73 , Val \= 87 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 148 , Val \= 162) ->
    ( verif_move2(Board, 0, Val - 42, Player) ;
      verif_move2(Board, 0, Val - 40, Player) ;
      verif_move2(Board, 0, Val - 15, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 12, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX, CoordY + 1, NVal2),
  convertToVal(CoordX + 1, CoordY + 1, NVal3),
  convertToVal(CoordX + 2, CoordY + 1, NVal4),

  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 17 < 196 -> verif_move(Board, 0, Val + 17, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),
  (Val + 30 < 196 -> verif_move(Board, 0, Val + 30, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 46 , Val \= 45 , Val \= 44 , Val \= 135 , Val \= 136 , Val \= 121 , Val \= 120 , Val \= 119) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 13, Player) ;
      verif_move2(Board, 0, Val + 3, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 31, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 12, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX - 1, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 2, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 26 < 196 -> verif_move(Board, 0, Val + 26, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 41 < 196 -> verif_move(Board, 0, Val + 41, Player) ; write('') ),

  ( (Val \= 60 , Val \= 61 , Val \= 74 , Val \= 47 , Val \= 33 , Val \= 135 , Val \= 136 , Val \= 149 , Val \= 122 , Val \= 108) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val + 15, Player) ;
      verif_move2(Board, 0, Val + 40, Player) ;
      verif_move2(Board, 0, Val + 42, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 12, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY , NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY - 1, NVal3),
  convertToVal(CoordX - 2, CoordY - 1, NVal4),

  (Val - 30 >= 0 -> verif_move(Board, 0, Val - 30, Player) ; write('') ),
  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 17 >= 0 -> verif_move(Board, 0, Val - 17, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 74 , Val \= 75 , Val \= 76 , Val \= 135 , Val \= 134 , Val \= 149 , Val \= 150 , Val \= 151) ->
    ( verif_move2(Board, 0, Val - 31, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val - 3, Player) ;
      verif_move2(Board, 0, Val + 13, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    X                 XX          %
  %    XX   XXX    XX    XXX         %
  %    XX   XX     XX                %
  %                X                 %
  %                                  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 13, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 74 , Val \= 46 , Val \= 45 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 149 , Val \= 120) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 30, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 13, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),

  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 46 , Val \= 47 , Val \= 135 , Val \= 134 , Val \= 136 , Val \= 121 , Val \= 122) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 26, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 13, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY , NVal3),
  convertToVal(CoordX, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 74 , Val \= 46 , Val \= 73 , Val \= 135 , Val \= 134 , Val \= 121 , Val \= 149 , Val \= 148) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 26, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 13, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX , CoordY - 1, NVal4),

  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 74 , Val \= 75 , Val \= 135 , Val \= 134 , Val \= 136 , Val \= 149 , Val \= 150) ->
    ( verif_move2(Board, 0, Val - 30, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

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

select_move(Board, 14, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),

  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 74 , Val \= 47 , Val \= 75 , Val \= 135 , Val \= 121 , Val \= 149 , Val \= 122 , Val \= 150) ->
    ( verif_move2(Board, 0, Val - 30, Player) ;
      verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 2, Player) ;
      verif_move2(Board, 0, Val + 26, Player) ;
      verif_move2(Board, 0, Val + 29, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 14, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY + 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 13 >= 0 -> verif_move(Board, 0, Val - 13, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 12 < 196 -> verif_move(Board, 0, Val + 12, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),
  (Val + 27 < 196 -> verif_move(Board, 0, Val + 27, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 45 , Val \= 47 , Val \= 135 , Val \= 134 , Val \= 137 , Val \= 120 , Val \= 122) ->
    ( verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 26, Player) ;
      verif_move2(Board, 0, Val + 28, Player) ;
      verif_move2(Board, 0, Val + 30, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 14, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 15 >= 0 -> verif_move(Board, 0, Val - 15, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 16 < 196 -> verif_move(Board, 0, Val + 16, Player) ; write('') ),
  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 29 < 196 -> verif_move(Board, 0, Val + 29, Player) ; write('') ),

  ( (Val \= 60 , Val \= 46 , Val \= 74 , Val \= 45 , Val \= 74 , Val \= 135 , Val \= 121 , Val \= 149 , Val \= 120 , Val \= 148) ->
    ( verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val - 26, Player) ;
      verif_move2(Board, 0, Val + 2, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 30, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 14, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY - 1, NVal4),

  (Val - 29 >= 0 -> verif_move(Board, 0, Val - 29, Player) ; write('') ),
  (Val - 27 >= 0 -> verif_move(Board, 0, Val - 27, Player) ; write('') ),
  (Val - 16 >= 0 -> verif_move(Board, 0, Val - 16, Player) ; write('') ),
  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 12 >= 0 -> verif_move(Board, 0, Val - 12, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 13 < 196 -> verif_move(Board, 0, Val + 13, Player) ; write('') ),
  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 15 < 196 -> verif_move(Board, 0, Val + 15, Player) ; write('') ),

  ( (Val \= 60 , Val \= 59 , Val \= 61 , Val \= 73 , Val \= 75 , Val \= 135 , Val \= 134 , Val \= 136 , Val \= 148 , Val \= 150) ->
    ( verif_move2(Board, 0, Val - 30, Player) ;
      verif_move2(Board, 0, Val - 28, Player) ;
      verif_move2(Board, 0, Val - 26, Player) ;
      verif_move2(Board, 0, Val + 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) )
    ; write('') ),

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

select_move(Board, 15, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val + 42 < 196 -> verif_move(Board, 0, Val + 42, Player) ; write('') ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('')),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 59, Val \= 46, Val \= 74, Val \= 32, Val \= 135, Val \= 134, Val \= 107, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 15, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY , NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('')),
  (Val + 14 + 1 < 196 0 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 46, Val \= 62, Val \= 135, Val \= 136, Val \= 134, Val \= 137, Val \= 121) ->
    ( verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 15, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX , CoordY - 2, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY, NVal3),
  convertToVal(CoordX, CoordY + 1, NVal4),

  (Val + 42 < 196 -> verif_move(Board, 0, Val + 42, Player) ; write('') ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('')),
  (Val + 28 - 1 < 196  -> verif_move(Board, 0, Val + 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 46, Val \= 74, Val \= 88, Val \= 135, Val \= 136, Val \= 163, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player);
      verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 15, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 2, CoordY, NVal4),

  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('')),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 74, Val \= 58, Val \= 135, Val \= 136, Val \= 134, Val \= 133, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 16, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val - 11, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player);
      verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player))
    ; write('') ),

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

select_move(Board, 16, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY - 2, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 42 >= 0 ->  verif_move(Board, 0, Val - 42, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('')),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 74, Val \= 88, Val \= 135, Val \= 136, Val \= 134, Val \= 149, Val \= 163) ->
    ( verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


select_move(Board, 16, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX + 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('')),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write('')),

  ( (Val \= 60, Val \= 59, Val \= 58, Val \= 46, Val \= 74, Val \= 135, Val \= 134, Val \= 133, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 16, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 42 < 196 ->  verif_move(Board, 0, Val + 42, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('')),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 59, Val \= 46, Val \= 32, Val \= 135, Val \= 136, Val \= 134, Val \= 121, Val \= 107) ->
    ( verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 16, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 28 >= 0 ->  verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val - 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('')),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 62, Val \= 46, Val \= 74, Val \= 135, Val \= 136, Val \= 137, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player))
    ; write('') ),

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

select_move(Board, 17, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX + 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY - 1, NVal3),
  convertToVal(CoordX, CoordY - 2, NVal4),


  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 42 >= 0 ->  verif_move(Board, 0, Val - 42, Player) ; write('') ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write('') ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('')),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('')),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 59, Val \= 58, Val \= 74, Val \= 88, Val \= 135, Val \= 134, Val \= 133, Val \= 149, Val \= 163) ->
    ( verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 - 1, Player))
    ; write('') ),


  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 17, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX + 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 42 < 196 ->  verif_move(Board, 0, Val + 42, Player) ; write('') ),
  (Val + 3 < 196 -> verif_move(Board, 0, Val + 3, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 + 2 >= 0 ->  verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('')),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('')),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 59, Val \= 58, Val \= 46, Val \= 32, Val \= 135, Val \= 134, Val \= 133, Val \= 121, Val \= 107) ->
    ( verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 3, Player);
      verif_move2(Board, 0, Val + 14 + 3, Player);
      verif_move2(Board, 0, Val - 14 - 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 17, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX - 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY + 2, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 42 < 196 ->  verif_move(Board, 0, Val + 42, Player) ; write('') ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 ->  verif_move(Board, 0, Val - 14 - 2, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('')),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('')),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 62, Val \= 46, Val \= 32, Val \= 135, Val \= 136, Val \= 137, Val \= 121, Val \= 107) ->
    ( verif_move2(Board, 0, Val + 42 - 1, Player);
      verif_move2(Board, 0, Val + 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val - 14 + 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 17, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX - 2, CoordY, NVal2),
  convertToVal(CoordX, CoordY - 1, NVal3),
  convertToVal(CoordX, CoordY - 2, NVal4),

  (Val + 14 < 196 -> verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 42 >= 0 ->  verif_move(Board, 0, Val - 42, Player) ; write('') ),
  (Val - 3 >= 0 -> verif_move(Board, 0, Val - 3, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 ->  verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 - 2, Player) ; write('')),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('')),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('')),

  ( (Val \= 60, Val \= 61, Val \= 62, Val \= 74, Val \= 88, Val \= 135, Val \= 136, Val \= 137, Val \= 149, Val \= 163) ->
    ( verif_move2(Board, 0, Val - 42 - 1, Player);
      verif_move2(Board, 0, Val - 42 + 1, Player);
      verif_move2(Board, 0, Val - 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 - 3, Player);
      verif_move2(Board, 0, Val + 14 + 1, Player))
    ; write('') ),

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

select_move(Board, 18, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY -1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 - 2, Player) ; write('') ),
  (Val + 14 + 2 < 196 ->  verif_move(Board, 0, Val + 14 + 2, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 59, Val \= 45, Val \= 74, Val \= 75, Val \= 135, Val \= 134, Val \= 120, Val \= 149, Val \= 150) ->
    ( verif_move2(Board, 0, Val + 28, Player);
      verif_move2(Board, 0, Val + 28 + 2, Player);
      verif_move2(Board, 0, Val + 14 - 1, Player);
      verif_move2(Board, 0, Val - 2, Player);
      verif_move2(Board, 0, Val - 28 - 2, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 18, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 - 2 < 196 ->  verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 59, Val \= 46, Val \= 73, Val \= 47, Val \= 135, Val \= 134, Val \= 121, Val \= 148, Val \= 122) ->
    ( verif_move2(Board, 0, Val + 28 - 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val - 2, Player);
      verif_move2(Board, 0, Val - 28 + 2, Player);
      verif_move2(Board, 0, Val - 28, Player);
      verif_move2(Board, 0, Val - 14 - 1, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 18, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val + 28 < 196 -> verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 14 >= 0 ->  verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 -> verif_move(Board, 0, Val - 14 - 2, Player) ; write('') ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 61, Val \= 46, Val \= 75, Val \= 45, Val \= 135, Val \= 135, Val \= 121, Val \= 150, Val \= 120) ->
    ( verif_move2(Board, 0, Val + 28, Player);
      verif_move2(Board, 0, Val + 28 - 2, Player);
      verif_move2(Board, 0, Val - 14 + 1, Player);
      verif_move2(Board, 0, Val + 2, Player);
      verif_move2(Board, 0, Val + 28 + 2, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 18, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),


    (Val + 14 < 196 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
    (Val - 28 >= 0 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
    (Val - 2 >= 0 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
    (Val + 1 < 196 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
    (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
    (Val - 14 + 2 >= 0 ->  verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
    (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('') ),
    (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
    (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('') ),


    ( (Val \= 60, Val \= 61, Val \= 73, Val \= 74, Val \= 47, Val \= 135, Val \= 136, Val \= 148, Val \= 149, Val \= 122) ->
      ( verif_move2(Board, 0, Val + 28 - 2, Player);
        verif_move2(Board, 0, Val + 28, Player);
        verif_move2(Board, 0, Val + 14 + 2, Player);
        verif_move2(Board, 0, Val + 2, Player);
        verif_move2(Board, 0, Val - 28 + 2, Player);
        verif_move2(Board, 0, Val - 28 - 1, Player);
        verif_move2(Board, 0, Val - 14 - 2, Player))
      ; write('') ),


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


select_move(Board, 19, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 14 < 196 ->  verif_move(Board, 0, Val + 14, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('') ),
  (Val - 14 - 2 >= 0 ->  verif_move(Board, 0, Val - 14 - 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('') ),
  (Val + 14 + 2 < 196 -> verif_move(Board, 0, Val + 14 + 2, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),

  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 45, Val \= 75, Val \= 135, Val \= 134, Val \= 136, Val \= 120, Val \= 150) ->
    ( verif_move2(Board, 0, Val - 30, Player) ;
      verif_move2(Board, 0, Val - 28, Player) ;
      verif_move2(Board, 0, Val + 30, Player) ;
      verif_move2(Board, 0, Val + 28, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 12, Player) )
    ; write('') ),


  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 19, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX, CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),


  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('') ),
  (Val - 14 + 2 >= 0 ->  verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val + 28 - 1 < 196 -> verif_move(Board, 0, Val + 28 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 -> verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),

  ( (Val \= 60, Val \= 46, Val \= 74, Val \= 47, Val \= 73, Val \= 135, Val \= 149, Val \= 121, Val \= 122, Val \= 148) ->
    ( verif_move2(Board, 0, Val - 26, Player) ;
      verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val + 2, Player) ;
      verif_move2(Board, 0, Val + 29, Player) ;
      verif_move2(Board, 0, Val + 26, Player) ;
      verif_move2(Board, 0, Val - 2, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).


select_move(Board, 19, CoordX, CoordY, Player, 3, NewBoard) :-
  select_move(Board, 19, CoordX, CoordY, Player, 1, NewBoard).

select_move(Board, 19, CoordX, CoordY, Player, 4, NewBoard) :-
  select_move(Board, 19, CoordX, CoordY, Player, 2, NewBoard).



  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %
  %    X                   X         %
  %    XXX    XX           XX        %
  %     X    XX     X     XX         %
  %           X    XXX               %
  %                  X               %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

select_move(Board, 20, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 - 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 46, Val \= 75, Val \= 135, Val \= 134, Val \= 136, Val \= 121, Val \= 150) ->
    ( verif_move2(Board, 0, Val - 28, Player);
      verif_move2(Board, 0, Val - 30, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 20, CoordX, CoordY, Player, 2, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 1, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX - 1, CoordY, NVal3),
  convertToVal(CoordX , CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 1 < 196 -> verif_move(Board, 0, Val + 1, Player) ; write('') ),
  (Val - 14 + 2 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val - 28 + 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 61, Val \= 46, Val \= 74, Val \= 73, Val \= 135, Val \= 136, Val \= 121, Val \= 149, Val \= 148) ->
    ( verif_move2(Board, 0, Val - 29, Player);
      verif_move2(Board, 0, Val - 26, Player);
      verif_move2(Board, 0, Val - 16, Player);
      verif_move2(Board, 0, Val + 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 28 - 1, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 20, CoordX, CoordY, Player, 3, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 1, CoordY, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 1, CoordY + 1, NVal4),

  (Val - 14 >= 0 -> verif_move(Board, 0, Val - 14, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 2, Player) ; write('') ),
  (Val + 14 + 2 < 196 ->  verif_move(Board, 0, Val + 14 + 2, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 28 + 1 < 196 -> verif_move(Board, 0, Val + 28 + 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 74, Val \= 45, Val \= 135, Val \= 134, Val \= 136, Val \= 149, Val \= 120) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 - 2, Player);
      verif_move2(Board, 0, Val + 28, Player);
      verif_move2(Board, 0, Val + 28 + 2, Player);
      verif_move2(Board, 0, Val - 14 - 2, Player))
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 20, CoordX, CoordY, Player, 4, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX, CoordY - 1, NVal),
  convertToVal(CoordX + 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 1 >= 0 -> verif_move(Board, 0, Val - 1, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 2 < 196 -> verif_move(Board, 0, Val + 14 - 2, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 28 - 1 >= 0 -> verif_move(Board, 0, Val - 28 + 1, Player) ; write('') ),


  ( (Val \= 60, Val \= 59, Val \= 46, Val \= 74, Val \= 47, Val \= 135, Val \= 134, Val \= 121, Val \= 149, Val \= 122) ->
    ( verif_move2(Board, 0, Val - 28 - 1, Player);
      verif_move2(Board, 0, Val - 28 + 1, Player);
      verif_move2(Board, 0, Val - 14 + 2, Player);
      verif_move2(Board, 0, Val + 14 + 2, Player);
      verif_move2(Board, 0, Val + 28 + 1, Player);
      verif_move2(Board, 0, Val + 28 - 2, Player);
      verif_move2(Board, 0, Val - 2, Player))
    ; write('') ),

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

select_move(Board, 21, CoordX, CoordY, Player, 1, NewBoard) :-

  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX, CoordY - 1, NVal4),

  (Val - 28 >= 0 -> verif_move(Board, 0, Val - 28, Player) ; write('') ),
  (Val + 28 < 196 ->  verif_move(Board, 0, Val + 28, Player) ; write('') ),
  (Val - 2 >= 0 -> verif_move(Board, 0, Val - 2, Player) ; write('') ),
  (Val + 2 < 196 -> verif_move(Board, 0, Val + 2, Player) ; write('') ),
  (Val - 14 - 1 >= 0 -> verif_move(Board, 0, Val - 14 - 1, Player) ; write('') ),
  (Val + 14 + 1 < 196 ->  verif_move(Board, 0, Val + 14 + 1, Player) ; write('') ),
  (Val + 14 - 1 < 196 -> verif_move(Board, 0, Val + 14 - 1, Player) ; write('') ),
  (Val - 14 + 1 >= 0 -> verif_move(Board, 0, Val - 14 + 1, Player) ; write('') ),

  ( (Val \= 60, Val \= 59, Val \= 61, Val \= 46, Val \= 74, Val \= 135, Val \= 134, Val \= 136, Val \= 121, Val \= 149) ->
    ( verif_move2(Board, 0, Val - 27, Player) ;
      verif_move2(Board, 0, Val - 29, Player) ;
      verif_move2(Board, 0, Val + 27, Player) ;
      verif_move2(Board, 0, Val + 29, Player) ;
      verif_move2(Board, 0, Val - 16, Player) ;
      verif_move2(Board, 0, Val - 12, Player) ;
      verif_move2(Board, 0, Val + 16, Player) ;
      verif_move2(Board, 0, Val + 12, Player) )
    ; write('') ),

  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 21, CoordX, CoordY, Player, 2, NewBoard) :-
  select_move(Board, 21, CoordX, CoordY, Player, 1, NewBoard).

select_move(Board, 21, CoordX, CoordY, Player, 3, NewBoard) :-
  select_move(Board, 21, CoordX, CoordY, Player, 1, NewBoard).

select_move(Board, 21, CoordX, CoordY, Player, 4, NewBoard) :-
  select_move(Board, 21, CoordX, CoordY, Player, 1, NewBoard).




% Convert a Coor in a value %

convertToVal(X, Y, Val) :-
  X >= 0,
  Y >= 0,
  Y < 14,
  X < 14,
  NVal is Y * 14,
  Val is NVal + X.


% Convert a value in a Coor %

convertToCoord(X, Y, Val) :-
  Val >= 0,
  Val < 196,
  X is mod(Val, 14),
  Y is Val//14.

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
verif_move2([H|_], Count, Val, Player) :-
  %writeln(H),
  H = Player.


% Change one point of the board %

change_board([H|R], Val, Val, Player, [Player|R]) :-
  H = e.
change_board([H|R], Count,Val, Player, [H|NewBoard]) :-
  Count < Val,
  NCount is Count +1,
  change_board(R, NCount, Val, Player, NewBoard).
