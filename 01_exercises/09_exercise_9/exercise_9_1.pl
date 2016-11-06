/** Exercise 9.1 - Lösungen
 *
 *  Erklärung: es ist zu beachten, dass (1) bei Gleichheitszeichen
 *  Unificatio ausgeführt wird, (2) bei Verwendung von is und =:= die
 *  beiden Ausdrücke mathematisch ausgewertet werden, (3) mathematische
 *  Ausdrücke unabhängig von der Schreibweise als gleich gelten und
 *  vereinheitlicht wird, (4) eine uninstantiierte Variable nie
 *  rechts des is Prädikates stehen darf und (5) == für den Identity
 *  Check sowie die verwandten Operatoren steht.
 *
 *      1 ?- 12 is 2*6.
 *      true.
 *
 *      2 ?- 14 =\= 2*6.
 *      true.
 *
 *      3 ?- 14 = 2*7.
 *      false.
 *
 *      4 ?- 14 == 2*7.
 *      false.
 *
 *      5 ?- 14 \== 2*7.
 *      true.
 *
 *      6 ?- 14 =:= 2*7.
 *      true.
 *
 *      7 ?- [1, 2, 3 | [d, e]] == [1, 2, 3, d, e].
 *      true.
 *
 *      8 ?- 2+3 = 3+2.
 *      false.
 *
 *      9 ?- 7-2 =\= 9-2.
 *      true.
 *
 *      10 ?- p == 'p'.
 *      true.
 *
 *      11 ?- p =\= 'p'.
 *      ERROR: =\=/2: Arithmetic: 'p/0' is not a function
 *
 *      12 ?- vincent == VAR.
 *      false.
 *
 *      13 ?- vincent = VAR, VAR == vincent.
 *      VAR = vincent.
 *
 */
