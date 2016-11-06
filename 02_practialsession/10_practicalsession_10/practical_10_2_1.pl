/** Practical Session 10.2.1 - Lösungsvorschlag
 *
 *  Note: part c in loadable part of this solution proposition,
 *  part a and b as comments at the end of the file.
 *
 */

nu(X, X):- !, fail.
nu(_, _).

/** part a)
 *
 *      nu(A, B):-
 *          \+ =(A, B).
 *
 */

/** part b)
 *
 *      nu(A, B):-
 *          A \= B.
 *
 */