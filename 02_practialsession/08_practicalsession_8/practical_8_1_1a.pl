/** Practical Session 8.1.1 a) - Lösungsvorschlag
 *
 */

s --> np(subject), vp.

np(_) --> det, n.
np(X) --> pro(X).

vp --> v, np(object); v.

det --> [the]; [a].
n --> [woman]; [man].
v --> [shoots].
pro(subject) --> [he]; [she].
pro(object) --> [him]; [her].