%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Apr 2026 15:46
%%%-------------------------------------------------------------------
-module(tuppel).
-author("madni").

%% API
-export([convert/1]).

convert({fahrenheit, X}) ->
  Y = (X - 32) * 5 / 9,
  {celsius, Y};
convert({celsius, X}) ->
  Y =  X * 9 / 5 + 32,
  {fahrenheit, Y}.

