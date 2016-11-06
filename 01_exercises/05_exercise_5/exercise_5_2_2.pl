/** Exercise 5.2.2 - Lösungen
 *
 *  Achtung: keine reverse Abfrage möglich, d.h. X
 *  und Y müssen immer instantiiert sein.
 *
 *  Alternative: sum(X, Y, Z):- Z is X + Y.
 *
 */

sum(X, Y, Z):- is(Z, +(X,Y)).
