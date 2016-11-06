/** Practical Session 5.2 - Lösungsvorschlag
 *
 *  Anmerkung: zwei Varianten, einmal normal rekursiv und
 *  eine zweite Variante mit tail recursion.
 *
 */

scalarmult(_, [], []).
scalarmult(Scalar, [VecHead | VecTail], [ResultHead | ResultTail]):-
    is(ResultHead, *(VecHead, Scalar)), scalarmult(Scalar, VecTail, ResultTail).

/** Variante 2
 *
 *
 *  scalarmultTail(Scalar, [VecHead | VecTail], AccList, Result):-
 *      is(AccListNewHead, *(VecHead, Scalar)),
 *      scalarmultTail(Scalar, VecTail, [AccListNewHead | AccList], Result).
 *
 *  scalarmultTail(_, [], Result, Result).
 *
 *
 */