/** Practical Session 8.2.1 - Lösungsvorschlag
 *
 *  Note: in contrast to the task setting, I separated
 *  the parsing and the normal grammer. With sparse you
 *  can check and parse the sentence to a parse tree
 *  while s/2 only checks the correctness of the
 *  sentence. The displaying part was added later
 *  to print the parse tree.
 *
 */

/** sentence only, no parse tree */
s() --> np(Num, Pers, subject), vp(Num, Pers).

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


/** sentence with parse tree */
sparse(sentence(NP, VP)) --> npparse(NP, Num, Pers, subject), vpparse(VP, Num, Pers).

npparse(nounpart(DET, AP, N, PP), Num, Pers, _) -->
detparse(DET, Num), apparse(AP), nparse(N, Num), ppparse(PP), {Pers=third}.

npparse(nounpart(DET, N, PP), Num, Pers, _) -->
detparse(DET, Num), nparse(N, Num), ppparse(PP), {Pers=third}.

npparse(nounpart(DET, AP, N), Num, Pers, _) -->
detparse(DET, Num), apparse(AP), nparse(N, Num), {Pers=third}.

npparse(nounpart(DET, N), Num, Pers, _) -->
detparse(DET, Num), nparse(N, Num), {Pers=third}.

npparse(nounpart(PRO), Num, Pers, Usage) -->
proparse(PRO, Num, Pers, Usage).

vpparse(verbpart(V, NP, PP), Num, Pers) -->
vparse(V, Num, Pers), npparse(NP, _, _, object), ppparse(PP).

vpparse(verbpart(V, NP), Num, Pers) -->
vparse(V, Num, Pers), npparse(NP, _, _, object).

vpparse(verbpart(V, PP), Num, Pers) -->
vparse(V, Num, Pers), ppparse(PP).

vpparse(verbpart(V), Num, Pers) -->
vparse(V, Num, Pers).

apparse(adjectivepart(ADJ)) -->
adjparse(ADJ).

apparse(adjectivepart(ADJ, AP)) -->
adjparse(ADJ), apparse(AP).

ppparse(prepositionpart(PREP, NP)) -->
prepparse(PREP), npparse(NP, _, _, object).

ppparse(prepositionpart(PREP, NP, PP)) -->
prepparse(PREP), npparse(NP, _, _, object), ppparse(PP).

adjparse(adjective(Word)) --> [Word], {lex(Word, adjective)}.
prepparse(preposition(Word)) --> [Word], {lex(Word, preposition)}.
detparse(determiner(Word), Num) --> [Word], {lex(Word, det, Num)}.
nparse(noun(Word), Num) --> [Word], {lex(Word, noun, Num)}.
vparse(verb(Word), Num, Pers) --> [Word], {lex(Word, verb, Num, Pers)}.
proparse(pronoun(Word), Num, Pers, Usage) --> [Word], {lex(Word, pronoun, Num, Pers, Usage)}.


/** display parse tree */
displayparsetree(Sentence):-
sparse(Parsed, Sentence, []), pptree(0, Parsed).

pptree(Stage, X):-
atomic(X), tab(*(Stage, 4)), write(X), nl;
var(X), tab(*(Stage, 4)), write(X), nl;
nonvar(X), functor(X, _, A), A > 0, NewStage is +(Stage, 1), =..(X, [H | T]), tab(*(Stage, 4)), write(H), write('('), nl, listofargs(NewStage, T), tab(*(Stage, 4)), write(')'), nl.

listofargs(_, []).
listofargs(Stage, [H | T]):-
pptree(Stage, H), listofargs(Stage, T).


/** Lexikon */
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
