%%%-------------------------------------------------------------------
%%% @author madni
%%% @copyright (C) 2026, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Apr 2026 16:15
%%%-------------------------------------------------------------------
-module(switchCase).
-author("madni").

%% API
-export([day/2]).

leap(Year) ->
  if
    Year rem 400 == 0 -> true;
    Year rem 100 == 0 -> false;
    Year rem 4 == 0 -> true;
    true -> false
  end.

day(Month, Year) ->
  Leap = leap(Year),
  case Month of
    jan -> 31;
    feb when Leap -> 29;
    feb -> 28;
    mar -> 31;
    apr -> 30;
    may -> 31;
    jun -> 30;
    jul -> 31;
    aug -> 31;
    sep -> 30;
    oct -> 31;
    nov -> 30;
    dec -> 31
  end.


