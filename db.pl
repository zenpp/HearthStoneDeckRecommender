:- initialization(main).

loaddb :-
  [card],
  [cardvalue],
  [class],
  [combo],
  [deck_list],
  [deck_match],
  [deck_name],
  [deck_type],
  [dust],
  [popularity],
  [replace],
  [type],
  [recommend].

menu :-
  nl,
  write('What do you want to ask? [1 for Find replacement card, 2 for Recommend deck, 3 for Pair cards crafting suggestion, 4 for Deck crafing by dust amount, 5 for Exit]'),nl,
  read(X),
  ask(X),
  X = _.

main :-
  loaddb,
  menu.

ask(1) :-
  write('Find replacement for which card? [Input card name...]'), nl,
  read(X),
  format('>>>> ~w can be replaced by : \n',[X]),
  replace(X,Y),
  format('* ~w\n',[Y]),fail;true,
  menu.

ask(2) :-
  writeln('Which class do you want to play?[Input class name]'),
  write('mage|warrior|hunter|shaman|priest|warlock|driud|rogue|paladin'), nl,
  read(Class),
  writeln('Which type do you want to play? [Input type name or type \'no\' to let system recommend.]'),
  write('aggro|combo|control|midrange|tempo'), nl,
  read(Type),
  (Type = no -> recommend(Class,_,Deck_name);recommend(Class,Type,Deck_name)),

  format('>>>> We recommend you to play deck name : ~w\n',[Deck_name]),
  write('-----------------------------\n'),
  write('|--name of card--|--amount--|\n'),
  write('-----------------------------\n'),
  contain(Deck_name,Card_name,Amount),
  format('| ~w = ~w \n',[Card_name,Amount]),fail;true,
  menu.

ask(3) :-
  writeln('Recommend Crafting between two cards.'),
  write('Input card 1 name : '), nl,
  read(Card1),
  write('Input card 2 name : '), nl,
  read(Card2),
  write('>>>> You should craft : '),
  should_craft(Card1,Card2),
  writeln(''),
  menu.

ask(4) :-
  writeln('Recommend deck by input amount of dust.'),
  write('Input your dust amount : '),nl,
  read(X),
  find_suitable_dust(X,Deck_Name,Amount),
  format('* ~w : ~w dust\n',[Deck_Name,Amount]),fail;true,
  write('Which deck would you like to craft : '),nl,
  read(Selected_Deck),
  write('-----------------------------------------\n'),
  write('|--------name of card--------|--amount--|\n'),
  write('-----------------------------------------\n'),
  contain(Selected_Deck,Card_name,Amount),
  dust(Card_name,Dust_amount),
  integer(Dust_amount),
  format('| ~w => ~w cards ',[Card_name,Amount]),
  format('(~w dust each)\n',[Dust_amount]),fail;true,
  menu.

ask(5) :-
    write('Goodbye').
