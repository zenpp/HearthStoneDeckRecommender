loaddb :-
  [card],
  [class],
  [combo],
  [deck_list],
  [deck_name],
  [deck_type],
  [replace],
  [type],
  [popularity].

menu :-
  nl,
  write('What do you want to ask? [1 : Replace,2 : Recommend, other : Exit]'),nl,
  read(X),
  ask(X).

main :-
  loaddb,
  menu.

ask(1) :-
  write('Find replacement for which card? [Input card name...]'), nl,
  read(X),
  replace(X,Y),
  format('~w can be replaced by ~w',[X,Y]),
  menu.
% ask(2) :-
%   write('Which class do you want to play? [Input class name...]'), nl,
%   read(Class),
%   write('Which type do you want to play? [Input type name or leave blank to let system recommend.]'), nl,
%   recommend(Class,Type).
%   write('~w class should play ~w type' [Class,Type]),
%   menu.

ask(3) :-
    write('Goodbye').

add_card_list(X, Entrylist) :-
  read(Input),
  (  Input = end
  -> reverse(Resultlist, Entrylist)
  ;  add_card_list(Resultlist, [Input|Entrylist])
  ),
  contain_with_test(X,Resultlist).

:- initialization(main).
