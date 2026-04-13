%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Apr 2026 13:58
%%%-------------------------------------------------------------------
-module(atoms).
-author("madni").

%% API
-export([convert/2]).
convert(F, fahrenheit) ->
  (F - 32) * 5 / 9;

convert(C, celsius) ->
  C * 9 / 5 + 32.
