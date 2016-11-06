/** Exercise 6.4 - Lösungen
 *
 *  Anmerkung: m.M.n. drei Varianten möglich
 *
 */

last(List, X):- reverse(List, [X | _]).

/** Variante 2
 *
 *  last([H | []], H).
 *  last([_ | Tail], X):- last(Tail, X).
 *
 */

/** Variante 3
*
*  last(List, X):- append(_, [X], List).
*
*/