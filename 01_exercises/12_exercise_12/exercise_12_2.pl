/** Exercise 12.2 - Lösungen
 *
 *  @usage:
 *      ?- countWords('hogwart.txt', R).
 *      R = [[harry, 3], [weasley, 1], [potter, 2], [ron, 3], [granger, 2], [gryffindor, 1], [wizard, 1], [hermione|...], [...|...]|...].
 *
 */

:- dynamic word/2.

countWords(Filename, Result):-
    open(Filename, read, Stream),
    countWordList(Stream, Result),
    close(Stream).

countWordList(Stream, Result):-
    at_end_of_stream(Stream),
    findall(W, word(W, _), WordList), generateResult(WordList, Result),
    !.

countWordList(Stream, Result):-
    \+ at_end_of_stream(Stream),
    readWord(Stream, W),
    (word(W, N) -> M is +(N, 1), retract(word(W, N)), assert(word(W, M)); assert(word(W, 1))),
    countWordList(Stream, Result).

generateResult([], []).
generateResult([W | TailWordList], [R | TailResultList]):-
    word(W, C), R = [W, C], generateResult(TailWordList, TailResultList), retract(word(W, _)).


%! read word from standard textfile
readWord(InStream, W):-
    get_code(InStream, Char),
    checkCharAndContinueReading(Char, CharList, InStream),
    atom_codes(W, CharList).

checkCharAndContinueReading(10, [], _):- !.
checkCharAndContinueReading(32, [], _):- !.
checkCharAndContinueReading(-1, [], _):- !.
checkCharAndContinueReading(end_of_file, [], _):- !.
checkCharAndContinueReading(Char, [Char | CharList], InStream):-
    get_code(InStream, NextChar),
    checkCharAndContinueReading(NextChar, CharList, InStream).