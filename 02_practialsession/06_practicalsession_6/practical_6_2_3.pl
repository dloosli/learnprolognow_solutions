/** Practical Session 6.2.3 - Lösungsvorschlag
 *
 *  Anmerkung: erste Variante mit Accumulator und
 *  Variante zwei mit append (keine echte Alternative,
 *  da gem. Buch ohne append gewünscht)
 *
 */

flatten(List, Flat):-
    accFlatten(List, [], Flat).

accFlatten([Head | Tail], Acc, Flat) :-
    accFlatten(Tail, Acc, NewAcc),
    accFlatten(Head, NewAcc, Flat).

accFlatten(X, AccList, [X|AccList]) :-
    X \= [],
    X \= [_|_].

accFlatten([],L,L).


/** Variante 2 (append)
 *
 *  flatten([], []).
 *
 *  flatten([[] | Tail], Flat):-
 *      flatten(Tail, Flat).
 *
 *  flatten([Head | Tail], [Head | Flat]):-
 *      Head \= [_ | _],
 *      Head \= [],
 *      flatten(Tail, Flat).
 *
 *  flatten([[HeadX | TailX] | Tail], Flat):-
 *      flatten(Tail, SecondFlat),
 *      flatten([HeadX | TailX], FirstFlat),
 *      append(FirstFlat, SecondFlat, Flat).
 *
 */