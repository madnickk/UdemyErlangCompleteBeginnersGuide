%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Apr 2026 22:36
%%%-------------------------------------------------------------------
-module(fibu).
-author("madni").

%% API
-export([fib/1]).

fib(0) ->
  0;
fib(1) ->
  1;
fib(A) when is_integer(A), A > 1 ->
  fib(A-1) + fib(A-2)
  .