%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Apr 2026 22:31
%%%-------------------------------------------------------------------
-module(processes_speak).
-author("madni").

%% API
-export([run/0, say/2]).

say(What, 0) ->
  done;
say(What, Times) ->
  io:fwrite(What ++ "\n"),
  say(What, Times-1).

run() ->
  spawn(processes_speak, say, ["Hi", 3]), % erstellt einen neuen Prozess,
  spawn(processes_speak, say, ["Bye", 5]). % erstellt einen neuen Prozess,