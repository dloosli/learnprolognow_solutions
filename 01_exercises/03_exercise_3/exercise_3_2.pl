/** Exercise 3.2 - Lösungen
 *
 */
directlyIn(irina, natasha).
directlyIn(natasha, olga).
directlyIn(olga, katarina).

in(A, B):-
    directlyIn(A, B).
in(A, B):-
    directlyIn(A, C), in(C, B).