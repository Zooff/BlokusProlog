




%%%%%%%%%%%%%%%%%%%%
% Piece monimo : X %
%%%%%%%%%%%%%%%%%%%%

select_move(Board, 1,  Player, Rotation, NewBoard) :-

      write("CoordX : "),
      read(CoordX),
      nl,
      write("CoordY : "),
      read(CoordY),
      nl,
      convertToVal(CoordX, CoordY, Val),
    %  verify_move(Board ,Nval, Player),
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
  convertToVal(CoordX + 1, CoordY + 1, NVal4),
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
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 19, Player, 3, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX - 2, CoordY - 1, NVal),
  convertToVal(CoordX - 1, CoordY, NVal2),
  convertToVal(CoordX + 1, CoordY, NVal3),
  convertToVal(CoordX + 2, CoordY + 1, NVal4),
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
  convertToVal(CoordX + 1, CoordY - 2, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 2, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).

select_move(Board, 19, Player, 4, NewBoard) :-
  write("CoordX : "),
  read(CoordX),
  write("CoordY : "),
  read(CoordY),
  convertToVal(CoordX, CoordY, Val),
  convertToVal(CoordX + 1, CoordY - 2, NVal),
  convertToVal(CoordX , CoordY - 1, NVal2),
  convertToVal(CoordX, CoordY + 1, NVal3),
  convertToVal(CoordX - 1, CoordY + 2, NVal4),
  change_board(Board, 0, Val, Player, Board1),
  change_board(Board1, 0, NVal, Player, Board2),
  change_board(Board2, 0, NVal2, Player, Board3),
  change_board(Board3, 0, NVal3, Player, Board4),
  change_board(Board4, 0, NVal4, Player, NewBoard).



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
  Y < 20,
  X < 20,
  NVal is Y * 20,
  Val is NVal + X.


% Change one point of the board %

change_board([H|R], Val, Val, Player, [Player|R]) :-
  H = e.
change_board([H|R], Count,Val, Player, [H|NewBoard]) :-
  Count < Val,
  NCount is Count +1,
  change_board(R, NCount, Val, Player, NewBoard).
