%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Apr 2026 18:16
%%%-------------------------------------------------------------------
-module(lastElement2).
-author("madni").

%% API
-export([remove/1]).

remove([]) -> [];
remove(List) ->
  {NewList, LastElement} = removeLast(List),
  io:format("Neue LIste = ~p & Letztes Element = ~p \n", [NewList, LastElement]).

removeLast([_Last]) ->
  {[], _Last};

removeLast([H | T]) ->
  {Liste, _Last} = removeLast(T),
  {[H | Liste], _Last}.


%% TESTING
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

remove_test() ->
  ?assertEqual([1], removeLastElement([1, 2])).

-endif.
