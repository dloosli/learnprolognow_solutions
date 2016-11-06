/** Exercise 4.1 - Lösungen
 *
 *  Erklärung: es ist zu beachten, dass mit Kommata
 *  Elemente und mit dem | Operator die Elemente am
 *  Anfang der Liste von der reslichen LISTE abgetrennt
 *  werden! Die Unification kann somit nur dann true
 *  zurückgeben, falls die Mengen die gleiche Anzahl
 *  sowie identische Elemente besitzen.
 *
 *      1 ?- [a, b, c, d] = [a, [b, c, d]].
 *      false.
 *
 *      2 ?- [a, b, c, d] = [a | [b, c, d]].
 *      true.
 *
 *      3 ?- [a, b, c, d] = [a, b, [c, d]].
 *      false.
 *
 *      4 ?- [a, b, c, d] = [a, b | [c, d]].
 *      true.
 *
 *      5 ?- [a, b, c, d] = [a, b, c, [d]].
 *      false.
 *
 *      6 ?- [a, b, c, d] = [a, b, c | [d]].
 *      true.
 *
 *      7 ?- [a, b, c, d] = [a, b, c, d, []].
 *      false.
 *
 *      8 ?- [a, b, c, d] = [a, b, c, d | []].
 *      true.
 *
 *      9 ?- [] = _.
 *      true.
 *
 *      10 ?- [] = [_].
 *      false.
 *
 *      11 ?- [] = [_ | []].
 *      false.
 *
 */
