%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Apr 2026 18:34
%%%-------------------------------------------------------------------
-module(sportmedaille).
-author("madni").

%% API
-export([medaille/2]).

medaille({alter, X}, {points, Y}) when not is_integer(X); not is_integer(Y) ->
  error(ungueltige_eingabe);

medaille({alter, X}, {points, Y}) when (X =< 0); (Y =< 0) ->
  error(zahl_muss_positiv_sein);

medaille({alter, X}, {points, Y}) when X >= 14 ->
  if
    Y >= 5000 -> goldmedaille;
    Y =< 4999, Y >= 4000 -> silbermedaille;
    true -> bronzemedaille
  end;

medaille({alter, X}, {points, Y}) when X =< 13 ->
  if
    Y >= 4000 -> goldmedaille;
    Y =< 3999, Y >= 3000 -> silbermedaille;
    true -> bronzemedaille
  end;

medaille(_, _) ->
  error(ungueltige_struktur).


% TEST
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
medaille_test() ->
  % ?assertEqual(Erwartet, tatsächlich)

  ?assertError(ungueltige_eingabe, medaille({alter, "13"}, {points, 3000})),
  ?assertError(ungueltige_eingabe, medaille({alter, 13}, {points, "3000"})),

  ?assertError(zahl_muss_positiv_sein, medaille({alter, -13}, {points, 3000})),
  ?assertError(zahl_muss_positiv_sein, medaille({alter, 13}, {points, -3000})),

  ?assertEqual(goldmedaille, medaille({alter, 14}, {points, 5001})),
  ?assertEqual(goldmedaille, medaille({alter, 14}, {points, 5000})),
  ?assertEqual(silbermedaille, medaille({alter, 14}, {points, 4001})),
  ?assertEqual(silbermedaille, medaille({alter, 14}, {points, 4000})),
  ?assertEqual(bronzemedaille, medaille({alter, 14}, {points, 3999})),
  ?assertError(zahl_muss_positiv_sein, medaille({alter, 14}, {points, 0})),

  ?assertEqual(goldmedaille, medaille({alter, 13}, {points, 4001})),
  ?assertEqual(goldmedaille, medaille({alter, 13}, {points, 4000})),
  ?assertEqual(silbermedaille, medaille({alter, 13}, {points, 3001})),
  ?assertEqual(silbermedaille, medaille({alter, 13}, {points, 3000})),
  ?assertEqual(bronzemedaille, medaille({alter, 13}, {points, 2999})),
  ?assertError(zahl_muss_positiv_sein, medaille({alter, 13}, {points, 0})),

  ?assertError(ungueltige_struktur, medaille(13, {points, 0})),
  ?assertError(ungueltige_struktur, medaille({alter, 13}, 3000)),
  ?assertError(ungueltige_struktur, medaille(13, 3000)).

-endif.