%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Apr 2026 16:36
%%%-------------------------------------------------------------------
-module(loops).
-author("madni").

%% API
-export([greet/1, greetings/1]).

greet(1) ->
  io:format("1~n"),
  "Stop";
greet(X) when X > 5 ->
  io:format("~p~n", [X]),
  greet(X - 1);
greet(X) when X == 5 ->
  io:format("Die letzten 5~n"),
  io:format("5~n"),
  greet(X - 1);
greet(X) when X =< 5 ->
  io:format("!! ~p~n", [X]),
  greet(X - 1).

% Alternative
greetings([]) ->
  true;

greetings([First | Rest]) ->
  io:fwrite("Hello " ++ First ++ "\n"),
  greetings(Rest).



