%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Apr 2026 18:13
%%%-------------------------------------------------------------------
-module(ggt).
-author("madni").

%% API
-export([ggt/2]).

ggt(A, 0) ->
  A;
ggt(A, B) when is_integer(A), is_integer(B) ->
  ggt(B, A rem B)
.



