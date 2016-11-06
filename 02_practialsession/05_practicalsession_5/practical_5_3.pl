/** Practical Session 5.3 - Lösungsvorschlag
 *
 */

vecprod([], [], 0).
vecprod([HeadLeft | TailLeft], [HeadRight | TailRight], Result):-
    is(TempResult, *(HeadLeft, HeadRight)),
    vecprod(TailLeft, TailRight, RecResult),
    is(Result,+(TempResult,RecResult)).