/** Practical Session 4.2.3 - Lösungsvorschlag
 *
 *  Anmerkung: analog a2b
 *
 */
combineasfunct([],[],[]).
combineasfunct([X | TailA], [Y | TailB], [f(X, Y) | Z]):-
    combineasfunct(TailA, TailB, Z).