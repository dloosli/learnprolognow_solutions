/** Exercise 6.3 - Lösungen
 *
 */

toptail([_ | TInList], Outlist):-
    append(Outlist, [_], TInList).