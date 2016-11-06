/** Exercise 5.2.1 - Lösungen
 *
 *  Achtung: increment(X, +(X,1)) wird NICHT ausgewertet! Zudem
 *  kann keine reverse Abfrage erfolgen, d.h. X muss immer
 *  instantiiert sein.
 *
 *  Alternative: increment(X, Y):- Y is X + 1.
 *
 */

increment(X, Y):- is(Y, +(X,1)).