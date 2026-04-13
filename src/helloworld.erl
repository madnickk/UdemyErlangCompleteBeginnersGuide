%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Apr 2026 20:30
%%%-------------------------------------------------------------------
-module(helloworld).
-author("madni").

%% API
-export([helloworld/0, helloworld/1]).

helloworld() ->
  "Hello World".


helloworld(X) ->
  "Hello " ++ X.

