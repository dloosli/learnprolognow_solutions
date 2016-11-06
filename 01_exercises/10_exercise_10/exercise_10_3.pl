/** Exercise 10.3 - Lösungen
 *
 */

split([], [], []):- !.
split([Head | TailInput], [Head | TailPositive], Negative):-
    Head >= 0, !, split(TailInput, TailPositive, Negative).
split([Head | TailInput], Positive, [Head | TailNegative]):-
    Head < 0, !, split(TailInput, Positive, TailNegative).