%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Apr 2026 22:22
%%%-------------------------------------------------------------------
-module(fakultaet).
-author("madni").

%% API
-export([fac/1]).

fac(1) ->
  1;
fac(A) when is_integer(A) ->
  A * fac(A - 1)
.
