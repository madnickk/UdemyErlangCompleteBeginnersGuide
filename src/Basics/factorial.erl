%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Apr 2026 23:50
%%%-------------------------------------------------------------------
-module(factorial).
-author("madni").

%% API
-export([factorial/1, factorial_test/0]).

factorial(1) -> % Fall 1: Wenn Eingabe  1, dann gib 1 zurück.
  1;            % Semikolon ; sagt, Fall 1 zuende, aber es kommt noch ein Fall.
factorial(N)->  % N für alle zahlen, die nicht 1 sind.
  N * factorial(N-1).            % Punkt. sagt: Funktion Zuende. Ausgabe N.

factorial_test() ->
  6 = factorial(3). % Wenn das nicht stimmt, wirft der Test einen Fehler