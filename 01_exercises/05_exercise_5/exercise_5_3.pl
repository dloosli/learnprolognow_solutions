/** Exercise 5.3 - Lösungen
 *
 */

addone([], []).
addone([Head | TailA], [Incr | TailB]):-
    is(Incr, +(Head,1)), addone(TailA, TailB).
