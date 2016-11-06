/** Practical Session 8.1.1 c) - Lösungsvorschlag
 *
 */

s --> np, vp.

np --> det, n.

vp --> v, np; v.

det --> [Word], {lex(Word, det)}.
n --> [Word], {lex(Word, noun)}.
v --> [Word], {lex(Word, verb)}.


%! Lexikon
lex(the, det).
lex(a, det).
lex(woman, noun).
lex(man, noun).
lex(shoots, verb).