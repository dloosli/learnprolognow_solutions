/** Exercise 4.2 - Lösungen
 *
 *  [1 | [2, 3, 4]] korrekt mit [1, 2, 3, 4]
 *  [1, 2, 3 | []] korrekt mit [1, 2, 3 ]
 *  [1 | 2, 3, 4] syntaktisch falsch, Klammerung fehlt
 *  [1 | [2 | [3 | [4 | []]]]] korrekt mit [1, 2, 3, 4]
 *  [1, 2, 3, 4 | []] korrekt mit [1, 2, 3, 4]
 *  [[] | []] korrekt mit [[]] (einziges Element ist die leere Liste)
 *  [[1, 2] | 4] syntaktisch falsch
 *  [[1, 2], [3, 4] | [5, 6, 7]] korrekt mit [[1, 2], [3, 4], 5, 6, 7] und somit fünf Elementen
 *
 */
