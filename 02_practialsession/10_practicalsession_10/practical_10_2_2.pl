/** Practical Session 10.2.2 - Lösungsvorschlag
 *
 */

unifiable([], _, []).
unifiable([Head | Tail], Term, [Head | ResultTail]):-
    \+ \+ Head = Term, unifiable(Tail, Term, ResultTail).
unifiable([Head | Tail], Term, Result):-
    \+ Head = Term, unifiable(Tail, Term, Result).