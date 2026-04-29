-module(anonym).
-author("Nico").
-export([run/1]).


run([{Value, Atom} | _Rest ]) ->
    if
        {Value, odd} -> odd;
        {Value, even} -> true;
    true -> wrong
    end.