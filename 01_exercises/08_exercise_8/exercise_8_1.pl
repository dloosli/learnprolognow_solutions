/** Exercise 8.1 - Lösungen
 *
 *  Anmerkung: Die Lösung ist nicht ganz identisch
 *  mit der Musterlösung - singular und plural
 *  müsste m.M.n. auch für den determiner verwendet
 *  werden. (Musterlösung ohne det(X)).
 *
 */

s --> np(X), vp(X).

np(X) --> det(X), n(X).
vp(X) --> v(X), np(_); v(X).

det(_) --> [the].
det(singular) --> [a].

n(singular) --> [woman].
n(singular) --> [man].
n(plural) --> [women].
n(plural) --> [men].
n(singular) --> [apple].
n(plural) --> [apples].
n(singular) --> [pear].
n(plural) --> [pears].

v(singular) --> [eats].
v(plural) --> [eat].