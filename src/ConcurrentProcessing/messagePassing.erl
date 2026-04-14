%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Apr 2026 23:04
%%%-------------------------------------------------------------------
-module(messagePassing).
-author("madni").

%% API
-export([alice/0, bob/2, run/0]).

alice() ->
  receive
    {message, PId} -> % man definiert das Pattern der Message, dann die Ausgabe.
      io:fwrite("Alice got a message\n"),
      PId ! message, % sendet eine nachricht zurück.
      alice();

    finished -> io:fwrite("Alice is finished \n") %neue Message: mit Atom finished
  end
.

bob(0, PId) ->
  PId ! finished,
  io:fwrite("Bob is finished\n");

bob(N, PId) ->
  PId ! {message, self()}, %send a message to process with Pid - self() sendet eigene PiD.
  receive
    message -> io:fwrite("Bob got a message\n")
  end,
  bob(N - 1, PId).

run() ->
  PId = spawn(messagePassing, alice, []),
  spawn(messagePassing, bob, [3, PId]).
