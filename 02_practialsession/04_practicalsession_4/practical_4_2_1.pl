/** Practical Session 4.2.1 - Lösungsvorschlag
 *
 *  Anmerkung: analog a2b
 *
 */
combine([],[],[]).
combine([X | TailA], [Y | TailB], [X, Y | Z]):-
    combine(TailA, TailB, Z).