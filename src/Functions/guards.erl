%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Apr 2026 20:02
%%%-------------------------------------------------------------------
-module(guards).
-author("madni").

%% API
-export([]).

getType(N) when N < 13 ->
  child;
getType(N) when N < 18 ->
  teen;
getType(N) when N >= 18 -> %Guard wird hier theoretisch nicht gebraucht, aber leserlicher.
  adult.
