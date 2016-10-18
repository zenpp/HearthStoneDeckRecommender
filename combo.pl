combo(sap,doom).
combo(cthun,doom).
combo(cthun,sdsdsd).

combo_with(X,Y) :-
  card(X),
  card(Y),
  combo(X,Y).
