%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. Apr 2026 18:35
%%%-------------------------------------------------------------------
-module(filter).
-author("madni").

%% API
-export([run/1]).

run({Liste, even}) ->
  filtereven(Liste);
run({Liste, odd}) ->
  filterodd(Liste).


filtereven([]) ->
  [];
filtereven([H | T]) when H rem 2 == 0->
  [H | filtereven(T)];
filtereven([H|T]) ->
  filtereven(T).

filterodd([]) ->
  [];
filterodd([H | T]) when H rem 2 == 1->
  [H | filterodd(T)];
filterodd([H|T]) ->
  filterodd(T).