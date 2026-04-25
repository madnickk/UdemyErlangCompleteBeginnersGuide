%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Apr 2026 18:16
%%%-------------------------------------------------------------------
-module(lastElement).
-author("madni").

%% API
-export([removeLastElement/1]).

removeLastElement([]) ->
  [];
removeLastElement([_lastElement]) -> %fängt letztes ListeElement auf
  io:format("Last Element = ~p", [_lastElement]),
  [_lastElement, []];

removeLastElement([H | T]) ->
  [H | removeLastElement(T)].

%% TESTING
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

remove_test() ->
  ?assertEqual([1], removeLastElement([1, 2])).

-endif.
