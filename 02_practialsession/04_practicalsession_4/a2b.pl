a2b([],[]).
a2b([a | TailA], [b | TailB]):-
    a2b(TailA, TailB).