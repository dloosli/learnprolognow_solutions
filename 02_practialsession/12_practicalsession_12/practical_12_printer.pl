/** MODULE PARSE TREE PRINTER
 *
 *  @solution: practical session 12
 *
 *  @description: this module implements a basic
 *  printer for a parse tree as complex term.
 *
 *  @import: in the main file write the statement
 *           <:- use_module(parseTreePrinter).>
 *
 *  @usage: <printParseTree(<complexTerm>).>
 *          <printParseTree(Stream, <complexTerm>).>
 *
 */

/** module export (first statement) */
:- module(parseTreePrinter, [printParseTree/1, printParseTree/2]).

printParseTree(ComplTerm):-
    pptree(_, 0, ComplTerm).

printParseTree(Stream, ComplTerm):-
    pptree(Stream, 0, ComplTerm).

pptree(Stream, Stage, X):-
    var(Stream), atomic(X), tab(*(Stage, 4)), write(X), nl;
    nonvar(Stream), atomic(X), tab(Stream, *(Stage, 4)), write(Stream, X), nl(Stream).

pptree(Stream, Stage, X):-
    var(Stream), var(X), tab(*(Stage, 4)), write(X), nl;
    nonvar(Stream), var(X), tab(Stream, *(Stage, 4)), write(Stream, X), nl(Stream).

pptree(Stream, Stage, X):-
    var(Stream), nonvar(X), functor(X, _, A), A > 0, NewStage is +(Stage, 1), =..(X, [H | T]),
    tab(*(Stage, 4)), write(H), write('('), nl, listofargs(Stream, NewStage, T), tab(*(Stage, 4)), write(')'), nl.

pptree(Stream, Stage, X):-
    nonvar(Stream), nonvar(X), functor(X, _, A), A > 0, NewStage is +(Stage, 1), =..(X, [H | T]),
    tab(Stream, *(Stage, 4)), write(Stream, H), write(Stream, '('), nl(Stream), listofargs(Stream, NewStage, T),
    tab(Stream, *(Stage, 4)), write(Stream, ')'), nl(Stream).

listofargs(_, _, []).
listofargs(Stream, Stage, [H | T]):-
    pptree(Stream, Stage, H), listofargs(Stream, Stage, T).