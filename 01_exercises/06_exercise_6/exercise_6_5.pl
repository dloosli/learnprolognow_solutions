/** Exercise 6.5 - Lösungen
 *
 *  Anmerkung: zwei Variante gemäss Buch
 *
 */

swapedFirstLast([First, Last], [Last, First]).
swapedFirstLast([HLeft, Middle | TLeft], [HRight, Middle | TRight]):-
    swapedFirstLast([HLeft | TLeft], [HRight | TRight]).

/** Variante 2
 *
 *  swapedFirstLast([HLeft | TLeft], [HRight | TRight]):-
 *      append(Middle, [HRight], TLeft),
 *      append(Middle, [HLeft], TRight).
 *
 */