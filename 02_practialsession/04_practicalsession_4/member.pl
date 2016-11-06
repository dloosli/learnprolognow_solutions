member(E, [E | _]).
member(E, [_ | Tail]):-
    member(E, Tail).