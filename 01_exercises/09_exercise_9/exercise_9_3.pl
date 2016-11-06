/** Exercise 9.3 - Lösungen
 *
 */

termtype(X, variable):- var(X).
termtype(X, atom):- atom(X).
termtype(X, number):- number(X).
termtype(X, constant):- atomic(X).
termtype(X, simpleTerm):- atomic(X); var(X).

termtype(X, complexTerm):-
nonvar(X), functor(X, _, Arity), Arity > 0.

termtype(X, term):-
termtype(X, simpleTerm);
termtype(X, complexTerm).