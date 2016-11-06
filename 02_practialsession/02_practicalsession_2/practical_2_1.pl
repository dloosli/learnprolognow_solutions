/** Practical Session 2.1 - Lösungsvorschlag
 *
 *  Anmerkung: \= entspricht einfach der Umkehrung der Unification,
 *  d.h. gibt = true aus muss \= false ausgeben und umgekehrt.
 *
 *      1 ?- a \= a.
 *      false.
 *
 *      2 ?- 'a' \= a.
 *      false.
 *
 *      3 ?- A \= a.
 *      false.
 *
 *      4 ?- f(a) \= a.
 *      true.
 *
 *      5 ?- f(a) \= A.
 *      false.
 *
 *      6 ?- f(A) \= f(a).
 *      false.
 *
 *      7 ?- g(a, B, c) \= g(A, b, C).
 *      false.
 *
 *      8 ?- g(a, b, c) \= g(A, C).
 *      true.
 *
 *      9 ?- f(X) \= X.
 *      false.
 *
 */