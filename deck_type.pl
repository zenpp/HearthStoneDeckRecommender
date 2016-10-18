deck_type(face_hunter,aggro).
deck_type(malygos_druid,combo).
deck_type(freeze_mage,control).
deck_type(nzoth_paladin,control).
deck_type(summoner_priest,control).
deck_type(miracle_rogue,combo).
deck_type(midrange_shaman,midrange).
deck_type(renolock,control).
deck_type(dragon_warrior,tempo).

is_deck_type(X,Y) :-
    deck_name(X),
    type(Y),
    deck_type(X,Y).

deck_type :-
  write('Please input deck name : '),
  read(X),
  is_deck_type(X,Y),
  write(Y).
