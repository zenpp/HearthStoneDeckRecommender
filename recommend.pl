recommend(Class,Type,Z) :-
  class(Class),
  type(Type),
  is_deck_match(Class,Z),
  is_deck_type(Z,Type),
  (most_popularity(Class,Type,_,Z)).
