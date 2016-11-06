/** Practical Session 10.1.2 - Lösungsvorschlag
 *
 *  Anmerkung: Einfach den Anweisungen gemäss Buch folgen...
 *
 */

enjoys(vincent,X):-
    big_kahuna_burger(X),!,fail;
    burger(X).

burger(X):- big_mac(X).
burger(X):- big_kahuna_burger(X).
burger(X):- whopper(X).

big_mac(a).
big_kahuna_burger(b).
big_mac(c).
whopper(d).

/** Version 2
 *
 *      enjoys(vincent,X):-
 *          burger(X),
 *          neg(big_kahuna_burger(X)).
 *      ...
 *      neg(Goal)  :-  Goal,!,fail.
 *      neg(Goal).
 *
 */

/** Version 3
 *
 *      enjoys(vincent,X):-
 *          burger(X),
 *          \+ big_kahuna_burger(X).
 *      ...
 *
 */

/** Version 3 (bad)
 *
 *      enjoys(vincent,X):-
 *          \+ big_kahuna_burger(X),
 *          burger(X).
 *      ...
 *
 */