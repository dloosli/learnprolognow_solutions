/** Exercise 9.4 - Lösungen
 *
 *  Anmerkung: eine weitere mögliche Lösung gemäss Buch
 *  findet sich in den kommentierten Zeilen am Ende der
 *  Datei.
 *
 */

groundterm(X):-
    atomic(X);
    nonvar(X), =..(X, [_ | T]), listofterms(T).

listofterms([]).
listofterms([H | T]):-
    groundterm(H), listofterms(T).

/** Variante Buch
 *
 *      groundterm(Term):-
 *          atomic(Term);
 *          nonvar(Term), functor(Term, _, Arity), groundterms(Term, Arity).
 *
 *      groundterms(_, 0).
 *      groundterms(ComplexTerm, Arg):-
 *          Arg > 0,
 *          arg(ARG, ComplexTerm, Term),
 *          groundterm(Term),
 *          NextArg is Arg - 1,
 *          groundterms(ComplexTerm, NextArg).
 *
 */
