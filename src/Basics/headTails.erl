%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Apr 2026 17:08
%%%-------------------------------------------------------------------
-module(headTails).
-export([summe/1]).

% Fall 1: Die Liste ist leer.
summe([]) ->
  0;

% Fall 2: Die Liste hat mindestens ein Element.
% H wird die Zahl, T wird die restliche Liste.
summe([H | T]) ->
  H + summe(T).