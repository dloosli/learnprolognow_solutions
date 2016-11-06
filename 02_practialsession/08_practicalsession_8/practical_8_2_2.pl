/** Practical Session 8.2.2 - Lösungsvorschlag
 *
 */

s --> np(Num, Pers, subject), vp(Num, Pers).

np(Num, Pers, Usage) -->
det(Num), ap, n(Num), pp, {Pers=third};
pro(Num, Pers, Usage).

vp(Num, Pers) -->
v(Num, Pers), np(_, _, object), pp;
v(Num, Pers), pp.

ap -->
[];
adj, ap.

pp -->
[];
prep, np(_, _, object), pp.

adj --> [Word], {lex(Word, adjective)}.
prep --> [Word], {lex(Word, preposition)}.
det(Num) --> [Word], {lex(Word, det, Num)}.
n(Num) --> [Word], {lex(Word, noun, Num)}.
v(Num, Pers) --> [Word], {lex(Word, verb, Num, Pers)}.
pro(Num, Pers, Usage) --> [Word], {lex(Word, pronoun, Num, Pers, Usage)}.


%! Lexikon
lex(big, adjective).
lex(small, adjective).
lex(fat, adjective).
lex(thin, adjective).
lex(frightened, adjective).
lex(courageous, adjective).

lex(under, preposition).
lex(on, preposition).
lex(over, preposition).

lex(the, det, _).
lex(a, det, singular).

lex(woman, noun, singular).
lex(women, noun, plural).
lex(man, noun, singular).
lex(men, noun, plural).
lex(apple, noun, singular).
lex(apples, noun, plural).
lex(pear, noun, singular).
lex(pears, noun, plural).
lex(cow, noun, singular).
lex(cows, noun, plural).
lex(mountain, noun, singular).
lex(mountains, noun, plural).

lex(shoot, verb, singular, first).
lex(shoot, verb, singular, second).
lex(shoots, verb, singular, third).
lex(shoot, verb, plural, _).

lex(eat, verb, singular, first).
lex(eat, verb, singular, second).
lex(eats, verb, singular, third).
lex(eat, verb, plural, _).

lex(fly, verb, singular, first).
lex(fly, verb, singular, second).
lex(flies, verb, singular, third).
lex(fly, verb, plural, _).

lex(i, pronoun, singular, first, subject).
lex(you, pronoun, singular, second, subject).
lex(he, pronoun, singular, third, subject).
lex(she, pronoun, singular, third, subject).
lex(it, pronoun, singular, third, subject).

lex(we, pronoun, plural, first, subject).
lex(you, pronoun, plural, second, subject).
lex(they, pronoun, plural, third, subject).

lex(me, pronoun, singular, third, object).
lex(you, pronoun, singular, third, object).
lex(him, pronoun, singular, third, object).
lex(her, pronoun, singular, third, object).
lex(it, pronoun, singular, third, object).

lex(us, pronoun, plural, first, object).
lex(you, pronoun, plural, second, object).
lex(them, pronoun, plural, third, object).