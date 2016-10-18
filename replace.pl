replace(X,Y) :-
  combo_with(X,Z),
  combo_with(Y,Z),
  \+(X=Y).
