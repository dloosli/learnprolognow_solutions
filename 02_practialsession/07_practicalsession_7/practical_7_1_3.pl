/** Practical Session 7.1.3 - Lösungsvorschlag
 *
 *      1 ?- [practical_7_1_3].
 *      true.
 *
 *      2 ?- listing([det]).
 *      det(A, B) :-
 *          (   A=[the|B]
 *          ;   A=[a|B]
 *          ).
 *
 *      true.
 *
 */

s --> np, vp.
np --> det, n.
vp --> v, np; v.
det --> [the]; [a].
n --> [woman]; [man].
v --> [shoots].