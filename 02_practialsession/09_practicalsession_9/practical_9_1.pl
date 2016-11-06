/** Practical Session 9.1 - Lösungsvorschlag
 *
 *  Anmerkung: die Darstellung wurde im Vergleich zur
 *  Aufgabenstellung etwas angepasst - bezgl. Klammerung
 *  wird die gleiche Ebene für die entsprechenden Klammern
 *  sowie ein Zeilenumbruch verwendet.
 *
 */

parsetree(X):-
    pptree(0, X).

pptree(Stage, X):-
    atomic(X), tab(*(Stage, 4)), write(X), nl;
    var(X), tab(*(Stage, 4)), write(X), nl;
    nonvar(X), functor(X, _, A), A > 0, NewStage is +(Stage, 1), =..(X, [H | T]),
    tab(*(Stage, 4)), write(H), write('('), nl, listofargs(NewStage, T),
    tab(*(Stage, 4)), write(')'), nl.

listofargs(_, []).
listofargs(Stage, [H | T]):-
    pptree(Stage, H), listofargs(Stage, T).