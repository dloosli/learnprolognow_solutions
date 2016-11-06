/** Practical Session 6.2.3 - Lösungsvorschlag
 *
 *  Anmerkung: Variante zwei mit Accumulator
 *
 */

flatten([], []).

flatten([[] | Tail], Flat):-
    flatten(Tail, Flat).

flatten([Head | Tail], [Head | Flat]):-
    Head \= [_ | _],
    Head \= [],
    flatten(Tail, Flat).

flatten([[HeadX | TailX] | Tail], Flat):-
    flatten(Tail, SecondFlat),
    flatten([HeadX | TailX], FirstFlat),
    append(FirstFlat, SecondFlat, Flat).

/** Variante 2 (Accumulator)
 *
 *  flatten(List, Flat):-
 *      accFlatten(List, [], Flat).
 *
 *  accFlatten([Head | Tail], Acc, Flat) :-
 *      accFlatten(Tail, Acc, NewAcc),
 *      accFlatten(Head, NewAcc, Flat).
 *
 *  accFlatten(X, AccList, [X|AccList]) :-
 *      X \= [],
 *      X \= [_|_].
 *
 *  accFlatten([],L,L).
 *
 */



