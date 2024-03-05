seg(1, point(1, 11), point(14, 11)).
seg(2, point(2, 4), point(13, 4)).
seg(3, point(2, 2), point(9, 2)).
seg(4, point(3, 1), point(3, 10)).
seg(5, point(7, 10), point(13, 10)).
seg(6, point(8, 0), point(8, 13)).
seg(7, point(10, 3), point(10, 12)).
seg(8, point(11, 3), point(11, 13)).
seg(9, point(12, 2), point(12, 12)).

/*Напишите правило, определяющее номер горизонтального отрезка. Голова правила представлена термом horiz/1
horiz(N).*/
horiz(N) :- seg(N, point(_, Y), point(_, Y)).

/*Напишите правило, определяющее номер вертикального отрезка. Голова правила представлена термом vertical/1
vertical(N).*/
vertical(N) :- seg(N, point(X, _), point(X, _)).

seg_length(N, L) :- seg(N, point(X1, Y1), point(X2, Y2)),
  sqrt((X1 - X2) * (X1 - X2) + (Y1 - Y2) * (Y1 - Y2), L).

/*
Введите в базу данных правило, определяющее пересекающиеся отрезки. Голова правила представлена структурой cross/5, два аргумента которой N и M - номера пересекающихся отрезков, третий - point(X,Y), описывает точку пересечения, а четвертый и пятый - длины пересекающихся отрезков
cross(N,M,point(X,Y),NL,ML).*/
cross(N, M, point(X, Y), NL, ML) :- seg(M, point(X1, Y), point(X2, Y)), seg(N, point(X, Y1), point(X, Y2)),
  X1 =< X, X =< X2,
  Y1 =< Y, Y =< Y2,
  seg_length(N, NL),
  seg_length(M, ML).

cross(N, M, point(X, Y), NL, ML) :- seg(N, point(X1, Y), point(X2, Y)), seg(M, point(X, Y1), point(X, Y2)),
  X1 =< X, X =< X2,
  Y1 =< Y, Y =< Y2,
  seg_length(N, NL),
  seg_length(M, ML).

/*Добавьте в базу данных правило определения периметра и площади прямоугольников, образуемых пересекающимися отрезками. Голова правила представлена структурой per_sq/6, четыре аргумента которой - номера отрезков, образующих прямоугольник. Пятый аргумент - P, периметр прямоугольника. Шестой аргумент - S, площадь периметра
perimetr(A,B,C,D,P,S).
perimetr(4,2,6,3,14,10)*/
perimetr(A, B, C, D, P, S) :- 
  cross(A, B, point(X1, Y1), _, _),
  cross(A, D, point(X1, Y2), _, _),
  cross(B, C, point(X2, Y1), _, _),
  cross(C, D, point(X2, Y2), _, _),
  X1 < X2,
  Y1 > Y2,
  L1 is abs(X2 - X1),
  L2 is abs(Y2 - Y1),
  P is (L1 + L2) * 2,
  S is L1 * L2.