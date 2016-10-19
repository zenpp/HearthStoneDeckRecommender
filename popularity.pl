popularity(face_hunter,8).
popularity(malygos_druid,9).
popularity(freeze_mage,9).
popularity(nzoth_paladin,7).
popularity(summoner_priest,7).
popularity(miracle_rogue,8).
popularity(midrange_shaman,10).
popularity(renolock,7).
popularity(dragon_warrior,9).



most_popularity(X,Y) :-
    deck_name(X),
    popularity(X,Y),
    \+ ((deck_name(Other), popularity(Other,Z), Z>Y)).

check_deck(X, Input) :-
  findall(X0, contain_with(X0, Input), X).
