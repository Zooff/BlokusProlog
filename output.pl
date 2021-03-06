lettertochiffre(1,'A').
lettertochiffre(2,'B').
lettertochiffre(3,'C').
lettertochiffre(4,'D').
lettertochiffre(5,'E').
lettertochiffre(6,'F').
lettertochiffre(7,'G').
lettertochiffre(8,'H').
lettertochiffre(9,'I').
lettertochiffre(10,'J').
lettertochiffre(11,'K').
lettertochiffre(12,'L').
lettertochiffre(13,'M').
lettertochiffre(14,'N').



draw_board(Board):-
  start_line,
  print_line,
  print_case(Board, 1).



start_line :-
  write('- - - A - B - C - D - E - F - G - H - I - J - K - L - M - N -'),
  nl.

print_line :-
  write('-------------------------------------------------------------'),
  nl.

print_case(_, 15) :- !.

print_case(Board, Indice) :-
  write('- '),
  lettertochiffre(Indice, AffIndice),
  write(AffIndice),
  write(' - '),
  print_all_col(Board, Indice, 1).

print_all_col(Board, Indice, 15) :-
  nl,
  print_line,
  NIndice is Indice + 1,
  print_case(Board, NIndice), !.

print_all_col([X|L], Indice, Col) :-
  Col < 21,
  X == e,
  ansi_format(fg(white), '~w', [X]),
  write(' - '),
  NCol is Col +1,
  print_all_col(L,Indice, NCol).

print_all_col([X|L], Indice, Col) :-
  Col < 21,
  X == o,
  ansi_format([bg(cyan), fg(cyan)], '~w', [X]),
  write(' - '),
  NCol is Col +1,
  print_all_col(L,Indice, NCol).

print_all_col([X|L], Indice, Col) :-
  Col < 21,
  X == x,
  ansi_format([fg(red), bg(red)], '~w', [X]),
  write(' - '),
  NCol is Col +1,
  print_all_col(L,Indice, NCol).
