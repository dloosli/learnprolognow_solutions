/** Practical Session 6.1 - Lösungsvorschlag
 *
 *  Anmerkung: Einfach den Anweisungen gemäss Buch folgen...
 *
 */

append([], L, L).
append([H | T], ListTwo, [H | ListThree]):- append(T, ListTwo, ListThree).

prefix(Pref, List):- append(Pref, _, List).
suffix(Suff, List):- append(_, Suff, List).
sublist(SubList, List):- suffix(Suff, List), prefix(SubList, Suff).

accReverse([H | T], Accumulator, Result):- accReverse(T, [H | Accumulator], Result).
accReverse([], Accumulator, Accumulator).
reverse(List, Result):- accReverse(List, [], Result).