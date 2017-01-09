/** Practical Session 5.3 - Lösungsvorschlag
 *
 */

vecprod([], [], 0).
vecprod([HeadLeft | TailLeft], [HeadRight | TailRight], Result):-
    vecprod(TailLeft, TailRight, RecResult),
    is(Result,+(*(HeadLeft, HeadRight),RecResult)).