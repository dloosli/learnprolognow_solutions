/** Exercise 4.6 - Lösungen
 *
 */
twice([], []).
twice([X | TailOne], [X, X | TailTwo]):- twice(TailOne, TailTwo).
