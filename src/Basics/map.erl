%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Apr 2026 15:40
%%%-------------------------------------------------------------------
-module(map).
-author("madni").

%% API
-export([getAge/1]).

getAge(Name) ->
  AgeMap = #{"Nico" => 43, "Rabea" => 29, "Sascha" => 48},
  maps:get(Name, AgeMap, -1).
