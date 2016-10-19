deck_type(face_hunter,aggro).
deck_type(malygos_druid,combo).
deck_type(freeze_mage,control).
deck_type(nzoth_paladin,control).
deck_type(summoner_priest,control).
deck_type(miracle_rogue,combo).
deck_type(midrange_shaman,midrange).
deck_type(renolock,control).
deck_type(dragon_warrior,tempo).
deck_type(beast_driud,midrange).
deck_type(token_driud,tempo).
deck_type(secret_hunter,combo).
deck_type(midrange_hunter,midrange).
deck_type(tempo_mage,tempo).
deck_type(control_mage,control).
deck_type(dragon_paladin,midrange).
deck_type(dragon_priest,midrange).
deck_type(nzoth_rogue,midrange).
deck_type(malygos_rogue,combo).
deck_type(aggro_shaman,aggro).
deck_type(evolve_shaman,midrange).
deck_type(zoolock,aggro).
deck_type(renouncelock,midrange).
deck_type(control_warrior,control).
deck_type(patron_warrior,midrange).

is_deck_type(X,Y) :-
    deck_name(X),
    type(Y),
    deck_type(X,Y).

deck_type :-
  write('Please input deck name : '),
  read(X),
  is_deck_type(X,Y),
  write(Y).
