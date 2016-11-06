/** Exercise 7.1 - Lösungen
 *
 *  Anmerkung: die ausgeschriebene Variante kann auch
 *  nach dem Laden der Grammatik abgefragt werden mit
 *
 *      ?- listing([s, foo, bar, mar, me, my, zar, blar, car, wiggle]).
 *
 *  Lösungen:
 *
 *      1 ?- [exercise_7_1].
 *      true.
 *
 *      2 ?- listing([s, foo, bar, mar, me, my, zar, blar, car, wiggle]).
 *      s(A, D) :-
 *          foo(A, B),
 *          bar(B, C),
 *          wiggle(C, D).
 *
 *      foo([choo|A], A).
 *      foo(A, C) :-
 *          foo(A, B),
 *          foo(B, C).
 *
 *      bar(A, C) :-
 *          mar(A, B),
 *          zar(B, C).
 *
 *      mar(A, C) :-
 *          me(A, B),
 *          my(B, C).
 *
 *      me([i|A], A).
 *
 *      my([am|A], A).
 *
 *      zar(A, C) :-
 *          blar(A, B),
 *          car(B, C).
 *
 *      blar([a|A], A).
 *
 *      car([train|A], A).
 *
 *      wiggle([toot|A], A).
 *      wiggle(A, C) :-
 *          wiggle(A, B),
 *          wiggle(B, C).
 *
 *      true.
 *
 *      3 ?- s(X, []).
 *      X = [choo, i, am, a, train, toot]
 *      X = [choo, i, am, a, train, toot, toot]
 *      X = [choo, i, am, a, train, toot, toot, toot]
 *      ...
 *
 */

s --> foo, bar, wiggle.
foo --> [choo].
foo --> foo, foo.
bar --> mar, zar.
mar --> me, my.
me --> [i].
my --> [am].
zar --> blar, car.
blar --> [a].
car --> [train].
wiggle --> [toot].
wiggle --> wiggle, wiggle.