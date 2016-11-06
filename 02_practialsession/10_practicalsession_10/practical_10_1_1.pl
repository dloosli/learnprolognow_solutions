/** Practical Session 10.1.1 - Lösungsvorschlag
 *
 *  Anmerkung: Einfach den Anweisungen gemäss Buch folgen...
 *
 */

max(X, Y, Y):- X =< Y.
max(X, Y, X):- X > Y.

/** Version 2 (green cut)
 *
 *      max(X, Y, Y):- X =< Y, !.
 *      max(X, Y, X).
 *
 */

/** Version 3 (red cut)
*
*      max(X, Y, Z):- X =< Y, !, Y = Z.
*      max(X, Y, X).
*
*/