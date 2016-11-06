/** Exercise 11.1 - Lösungen
 *
 *  Note: with SWI Prolog asserta and assertz seem to work
 *  only inside the runtime environment. In contrast to this
 *  assert can be used for predicates that were declared as
 *  dynamic.
 *
 *  Solutions:
 *      1 ?- assert(q(a, b)), assertz(q(1, 2)), asserta(q(foo, blug)).
 *      true.
 *
 *      2 ?- listing([q]).
 *      :- dynamic q/2.
 *
 *      q(foo, blug).
 *      q(a, b).
 *      q(1, 2).
 *
 *      true.
 *
 *      3 ?- retract(q(1, 2)), assertz( (p(X):- h(X)) ).
 *      true.
 *
 *      4 ?- listing([q, p]).
 *      :- dynamic q/2.
 *
 *      q(foo, blug).
 *      q(a, b).
 *
 *      :- dynamic p/1.
 *
 *      p(A) :-
 *      h(A).
 *
 *      true.
 *
 *      5 ?- retractall(q(_, _)).
 *      true.
 *
 *      6 ?- listing([q, p]).
 *      :- dynamic q/2.
 *
 *      :- dynamic p/1.
 *
 *      p(A) :-
 *      h(A).
 *
 *      true.
 *
 */