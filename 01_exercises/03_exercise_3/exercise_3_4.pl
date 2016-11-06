/** Exercise 3.4 - Lösungen
 *
 */
greaterThan(succ(A), 0).
greaterThan(succ(A),succ(B)):- greaterThan(A, B).