%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 14. Apr 2026 22:11
%%%-------------------------------------------------------------------
-module(higherorderfunctions).
-author("madni").

%% API
-export([double/0]).

double() ->
  F = fun(X) -> 2 * X end,
  map(F, [1, 5, 2, 7, 4, 6]). %Übergibt F mit function und Liste an Function map()

map(F, []) -> % Wenn Liste leer, gib leere Liste zurück.
  [];
map(F, [First | Rest]) ->
  [F(First) | map(F, Rest)]. % Liste, die Solange map aufgerufen wird erstellt und ausgegeben wird.
% F(First) verdoppelt und map() weist immer neues Element zu F zu und übrige Elemente der Liste zu Rest.