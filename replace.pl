replace(X,Y) :-
  (combo_with(X,Z),
  combo_with(Y,Z));
  (combo_with(Z,X),
  combo_with(Z,Y)),
  \+(X=Y).
