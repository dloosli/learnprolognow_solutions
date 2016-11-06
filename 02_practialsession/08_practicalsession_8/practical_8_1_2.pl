/** Practical Session 8.1.2 - Lösungsvorschlag
 *
 */

s(Count) --> a_block(Count), b_block(Count), c_block(Count).

a_block(0) --> [].
a_block(succ(Count)) --> [a], a_block(Count).

b_block(0) --> [].
b_block(succ(Count)) --> [b], b_block(Count).

c_block(0) --> [].
c_block(succ(Count)) --> [c], c_block(Count).