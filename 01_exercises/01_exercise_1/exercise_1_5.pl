/** Exercise 1.5 - Lösungen
 *
 *  1 ?- [exercise_1_5].
 *  true.
 *
 *  2 ?- wizard(ron).
 *  true.
 *
 *  3 ?- witch(ron).
 *  ERROR: toplevel: Undefined procedure: witch/1 (DWIM could not correct goal)
 *
 *  4 ?- wizard(hermione).
 *  false.
 *
 *  5 ?- witch(hermione).
 *  ERROR: toplevel: Undefined procedure: witch/1 (DWIM could not correct goal)
 *
 *  6 ?- wizard(harry).
 *  true.
 *
 *  7 ?- wizard(X).
 *  X = ron
 *  X = harry.
 *
 *  8 ?- witch(X).
 *  ERROR: toplevel: Undefined procedure: witch/1 (DWIM could not correct goal)
 *
 */

hasWand(harry).
quidditchPlayer(harry).

wizard(ron).
wizard(X):-
    hasBroom(X), hasWand(X).

hasBroom(X):-
    quidditchPlayer(X).