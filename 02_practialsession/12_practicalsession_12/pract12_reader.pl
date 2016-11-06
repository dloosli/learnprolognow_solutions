/** MODULE PARSE TREE READER
 *
 *  @solution: practical session 12
 *
 *  @description: this module implements a basic
 *  reader for a parse tree.
 *
 *  @import: in the main file write the statement
 *           <:- use_module(parseTreeReader).>
 *
 *  @usage: <readParseTreePl(Filename, <prologstyleparsetree>).>
 *          <readParseTreeText(Filename, <normaltextwithdotasendofparsetree>).>
 *
 */

/** module export (first statement) */
:- module(parseTreeReader, [readParseTreePl/2, readParseTreeText/2]).


/** parse tree reader for prolog style files */
readParseTreePl(Filename, ResultList):-
    open(Filename, read, Stream),
    read_pl(Stream, ResultList),
    close(Stream).

read_pl(Stream, List):-
    \+ at_end_of_stream(Stream),
    read(Stream, List).


/** parse tree reader for text style files */
readParseTreeText(Filename, ResultList):-
    open(Filename, read, Stream),
    readWordList(Stream, ResultList),
    close(Stream).

readWordList(Stream, []):-
    at_end_of_stream(Stream), !.

readWordList(Stream, ResultList):-
    \+ at_end_of_stream(Stream),
    readWord(Stream, Head),
    (Head \= '.' -> ResultList = [Head | Tail], readWordList(Stream, Tail); ResultList = []).

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