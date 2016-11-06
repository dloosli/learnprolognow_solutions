/** Practical Session 5.1 - Lösungsvorschlag
 *
 */

min([H | T], Min):-
    minimum([H | T], H, Min).

minimum([H | T], A, Min):-
    H < A, minimum(T, H, Min).

minimum([H | T], A, Min):-
    H >= A, minimum(T, A, Min).

minimum([], Min, Min).