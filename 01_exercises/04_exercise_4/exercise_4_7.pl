/** Exercise 4.6 - Lösungen
 *
 *  Anmerkung: abgekürzte Version im Gegensatz zur Übung 2
 *
 *  Aufgabe 4.6.1
 *      member(a, [c, b, a, y])
 *      -> member(a, [b, a, y])
 *      -> member(a, [a, y])
 *      -> true.
 *
 *  Aufgabe 4.6.2
 *      member(x, [a, b, c])
 *      -> member(x, [b, c])
 *      -> member(x, [c])
 *      -> member(x, [])
 *      -> false.
 *
 *  Aufgabe 4.6.3
 *      member(X, [a, b, c])
 *      -- Instantiierung mit a
 *      -> member(a, [a, b, c])
 *      -> true.
 *
 *      -- Regelanwendung
 *      -> member(X, [a, b, c])
 *      -> member(X, [b, c])
 *
 *          -- Instantiierung mit b
 *          -> member(b, [b, c])
 *          -> true.
 *
 *          -- Regelanwendung
 *          -> member(X, [b, c])
 *          -> member(X, [c])
 *
 *              -- Instantiierung mit c
 *              -> member(c, [c])
 *              -> true.
 *
 *              -- Regelanwendung
 *              -> member(X, [c])
 *              -> member(X, [])
 *              -> fail.
 *
 */
