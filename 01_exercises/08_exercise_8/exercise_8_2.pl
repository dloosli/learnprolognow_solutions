/** Exercise 8.2 - Lösungen
 *
*  Anmerkung: Kontrolle über <listing> möglich
 *
 *      kanga(V, R, Q, A, C):-
 *          roo(V, R, A, B),
 *          jumps(Q, Q, B, D),
 *          marsupial(V, Q, R),
 *          C=D.
 *
 */

kanga(V, R, Q) -->
    roo(V, R), jumps(Q, Q), {marsupial(V, Q, R)}.