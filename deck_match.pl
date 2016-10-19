deck_match(hunter,face_hunter).
deck_match(hunter,secret_hunter).
deck_match(hunter,midrange_hunter).

deck_match(druid,malygos_druid).
deck_match(druid,beast_driud).
deck_match(driud,token_driud).

deck_match(mage,freeze_mage).
deck_match(mage,tempo_mage).
deck_match(mage,control_mage).

deck_match(paladin,nzoth_paladin).
deck_match(paladin,dragon_paladin).

deck_match(priest,summoner_priest).
deck_match(priest,dragon_priest).

deck_match(rogue,miracle_rogue).
deck_match(rogue,nzoth_rogue).
deck_match(rogue,malygos_rogue).

deck_match(shaman,midrange_shaman).
deck_match(shaman,aggro_shaman).
deck_match(shaman,evolve_shaman).

deck_match(warlock,renolock).
deck_match(warlock,zoolock).
deck_match(warlock,renouncelock).

deck_match(warrior,dragon_warrior).
deck_match(warrior,control_warrior).
deck_match(warrior,patron_warrior).


is_deck_match(X,Y) :-
  class(X),
  deck_name(Y),
  deck_match(X,Y).
