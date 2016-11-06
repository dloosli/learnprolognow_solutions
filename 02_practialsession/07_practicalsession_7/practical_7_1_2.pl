/** Practical Session 7.1.2 - Lösungsvorschlag
 *
 *  Anmerkung: Einfach den Anweisungen gemäss Buch folgen...
 *
 */

s(X, Z):- np(X, Y), vp(Y, Z).
np(X, Z):- det(X, Y), n(Y, Z).
vp(X, Z):- v(X, Y), np(Y, Z); v(X, Z).

det([the | W], W).
det([a | W], W).

n([woman | W], W).
n([man | W], W).

v([shoots | W], W).