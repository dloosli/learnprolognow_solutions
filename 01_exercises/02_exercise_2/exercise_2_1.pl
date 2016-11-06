/** Exercise 2.1 - Lösungen
 *
 *  1 ?- bread = bread.
 *  true.
 *  <Erklärung: identische Atome>
 *
 *  2 ?- 'Bread' = bread.
 *  false.
 *  <Erklärung: keine identische Atome, Grossbuchstaben in Single Quotes>
 *
 *  3 ?- 'bread' = bread.
 *  true.
 *  <Erklärung: identische Atome trotz Single Quotes>
 *
 *  4 ?- Bread = bread.
 *  Bread = bread.
 *  <Erklärung: Bread ist Variable, Unification mit Instantiierung somit möglich>
 *
 *  5 ?- bread = sausage.
 *  false.
 *  <Erklärung: keine identische Atome>
 *
 *  6 ?- food(bread) = bread.
 *  false.
 *  <Erklärung: komplexer Term links, Atom rechts>
 *
 *  7 ?- food(bread) = X.
 *  X = food(bread).
 *  <Erklärung: X ist Variable, Unification mit Instantiierung somit möglich>
 *
 *  8 ?- food(X) = food(bread).
 *  X = bread.
 *  <Erklärung: X ist Variable, Unification mit Instantiierung somit möglich>
 *
 *  9 ?- food(bread, X) = food(Y, sausage).
 *  X = sausage,
 *  Y = bread.
 *  <Erklärung: X und Y sind Variablen, Unification mit Instantiierung somit möglich>
 *
 *  10 ?- food(bread, X, beer) = food(Y, sausage, X).
 *  false.
 *  <Erklärung: X ist links mit sausage zu instantiieren, rechts wäre jedoch beer nötig>
 *
 *  11 ?- food(bread, X, beer) = food(Y, kahuna_burger).
 *  false.
 *  <Erklärung: Prädikate mit unterschiedlicher Stelligkeit>
 *
 *  12 ?- food(X) = X.
 *  X = food(X).
 *  <Erklärung: Sonderfall - SWI Prolog verwendet eine optimistische Unification ohne occurs check, d.h. die beiden Terme können vereinigt werden. Mit occurs check nach den Regeln der Unification müsste die Antwort jedoch false sein.>
 *
 *  13 ?- meal(food(bread), drink(beer)) = meal(X, Y).
 *  X = food(bread),
 *  Y = drink(beer).
 *  <Erklärung: X und Y sind Variablen, Unification mit Instantiierung somit möglich>
 *
 *  14 ?- meal(food(bread), X) = meal(X, drink(beer)).
 *  false.
 *  <Erklärung: X ist links mit drink(beer) zu instantiieren, rechts wäre jedoch food(bread) nötig>
 *
 */