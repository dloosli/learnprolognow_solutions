/** Exercise 6.2 - Lösungen
 *
 *  Anmerkung: gemäss offiziellen Lösungen noch eine
 *  zweite Variante möglich (vgl. Kommentar am Schluss
 *  dieser Datei).
 */

palindrome(List):- reverse(List, List).

/** Variante gemäss Buch
 *
 *  palindrome(L):-
 *      check_palindrome(L, []).
 *
 *  check_palindrome(L, L).
 *  check_palindrome([_ | L], L).
 *
 *  check_palindrome([H | T], LPal):-
 *      check_palindrome(T, [H | LPal]).
 *
 */
