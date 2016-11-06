/** Practical Session 7.1.1 - Lösungsvorschlag
 *
 *  Anmerkung: Einfach den Anweisungen gemäss Buch folgen...
 *
 */

s(Z):- np(X), vp(Y), append(X, Y, Z).
np(Z):- det(X), n(Y), append(X, Y, Z).
vp(Z):- v(X), np(Y), append(X, Y, Z); v(Z).

det([a]).
det([the]).

n([woman]).
n([man]).

v([shoots]).