/** Exercise 11.3 - Lösungen
 *
 *  Anmerkung: andere Lösung gemäss Buch am Ende
 *  der Datei im Kommentar
 *
 */

:- dynamic lookup/2.

sigma(A, B):-
    lookup(A, B), !.

sigma(1, 1).
sigma(A, B):-
    Dec is -(A, 1), sigma(Dec, Rec), B is +(A, Rec),
    assert(lookup(A, B)), !.

/** Version Buch
 *
 *      :- dynamic sigmares/2.
 *
 *      sigmares(0, 0).
 *
 *      sigma(Number, Sum):-
 *          sigmares(Number, Sum).
 *
 *      sigma(Number, Total):-
 *          Number > 0,
 *          \+ sigmares(Number, Total),
 *          NewNumber is Number - 1,
 *          sigma(NewNumber, Subtotal),
 *          Total is Subtotal + Number,
 *          assert(sigmares(Number, Total)).
 *
 */