/** MODULE BASIC ENGLISH PARSER
 *
 *  @solution: practical session 12
 *
 *  @description: this module implements a basic
 *  parser for the english language.
 *
 *  @import: in the main file write the statement
 *           <:- use_module(basicEnglishParser).>
 *
 *  @usage: you can ask three different queries for
 *  (a) "correct english sentence?", (b) "correct
 *  english sentence? then give me the parse tree"
 *  and (c) "correct english sentence? then display
 *  the parse tree in a beautiful, human readable
 *  way", (d) "...write it to a file", (e) "read a
 *  parse tree from a prolog file and check if it's
 *  a correct sentence" or (f) " read a parse tree
 *  from a text file and check if ..." with:
 *
 *  (a) <?- s([a, big, fat, woman, flies, over, the, small, frightened, cow], []).>
 *  (b) <?- sparse(X, [a, big, fat, woman, flies, over, the, small, frightened, cow], []).>
 *  (c) <?- sparseAndDisplay([a, big, fat, woman, flies, over, the, small, frightened, cow], []).>
 *  (d) <?- sparseAndWriteToFile('output.txt', [a, big, fat, woman, flies, over, the, small, frightened, cow], []).>
 *  (e) <?- readFromPlAndCheck('input.pl', Result).>
 *      with input.pl like <[a, big, fat, woman, flies, over, the, small, frightened, cow].>
 *  (f) <?- readFromTextAndCheck('input.txt', Result).>
 *      with input.txt like <a big fat woman flies over the small frightened cow .>
 *
 */

/** module export (first statement) */
:- module(basicEnglishParser, [s/2, sparse/3, sparseAndDisplay/2, sparseAndWriteToFile/3, readFromPlAndCheck/2, readFromTextAndCheck/2]).

/** module import */
:- use_module(practical_12_printer).
:- use_module(practical_12_reader).


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


/** print parse tree */
sparseAndDisplay(S, D):-
    sparse(Parsed, S, D), printParseTree(Parsed).

sparseAndWriteToFile(Filename, S, D):-
    sparse(Parsed, S, D),
    open(Filename, write, Stream),
    printParseTree(Stream, Parsed),
    close(Stream).


/** read parse tree from file */
readFromPlAndCheck(Filename, ResultList):-
    readParseTreePl(Filename, ResultList), s(ResultList, []).

readFromTextAndCheck(Filename, ResultList):-
    readParseTreeText(Filename, ResultList), s(ResultList, []).


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





