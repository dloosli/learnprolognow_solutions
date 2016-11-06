/** Practical Session 6.2.2 - Lösungsvorschlag
 *
 */

set([], []).
set([H | T], OutList):-
    set(T, OutList), member(H, OutList).

set([H | T], [H | OutList]):-
    set(T, OutList), not(member(H, OutList)).