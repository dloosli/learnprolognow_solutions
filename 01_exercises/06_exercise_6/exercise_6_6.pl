/** Exercise 6.6 - Lösungen
 *
 *  Anmerkung: Lösung gem. Buch, keine eigene gefunden
 *
 */

zebra(N):-
    Street = [HouseOne, HouseTwo, HouseThree],
    member(house(blue, _, _), Street),
    member(house(green, _, _), Street),
    member(house(red, english, _), Street),
    member(house(_, spanish, jaguar), Street),
    sublist([house(_, _, snail), house(_, japanese, _)], Street),
    sublist([house(blue, _, _), house(_, _, snail)], Street),
    member(house(_, N, zebra), Street).