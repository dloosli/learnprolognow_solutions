/** Practical Session 4.2.2 - Lösungsvorschlag
 *
 *  Anmerkung: analog a2b
 *
 */
combineaslist([],[],[]).
combineaslist([X | TailA], [Y | TailB], [[X, Y] | Z]):-
    combineaslist(TailA, TailB, Z).