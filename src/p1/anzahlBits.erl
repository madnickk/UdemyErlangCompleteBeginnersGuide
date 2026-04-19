%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Apr 2026 20:01
%%%-------------------------------------------------------------------
-module(anzahlBits).
-author("madni").

%% API
-export([countBits/1]).

countBits(Zahl) when Zahl == 0 ->
  1;
countBits(Zahl) ->
  calcBits(Zahl, 0)
.

calcBits(0, Bits) ->
  Bits;
calcBits(Zahl, Bits) ->
  calcBits(Zahl div 2,  1)
.



%
count_bits(0) -> 1;
count_bits(N) ->
  trunc(math:log2(N)) + 1.


count_bits(0) -> 1;
count_bits(N) -> count_bits(N, 0).

% Wir schieben die Zahl einfach Bit für Bit nach rechts (BSL/BSR)
count_bits(0, Acc) -> Acc;
count_bits(N, Acc) -> count_bits(N bsr 1, Acc + 1).
