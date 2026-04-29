-module(counter).
-author("Nico Pätzel").
-export([run/2]).


run(Liste, X) ->

    case isInList(Liste, X) of 
        true -> count([{X, 0}], Liste);
        false -> [{X, 0}]
    end.

    
isInList([], _X) ->
    false;
isInList([H | _Rest], X) when H == X ->
    true;
isInList([H | Rest], X) when H /= X ->
    isInList(Rest, X).


count([{X, Count}], []) ->
    [{X, Count}];
count([{X, Count}], [X | Rest]) ->
    count([{X, Count+1}], Rest);
count([{X, Count}], [H | Rest]) when X /= H ->
    count([{X, Count}], Rest).
