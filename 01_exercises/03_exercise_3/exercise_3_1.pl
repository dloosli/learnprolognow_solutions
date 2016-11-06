/** Exercise 3.1 - Lösungen
 *
 *  Anmerkung: zu Demonstrationszwecken Knowledge Base ergänzt
 *
 *  Anwort: Ja, es ist problematisch -> Endlosschleife mit
 *
 *      ?- descend(mia, X).
 *      ERROR: Out of local stack
 *
 */
child(me, other).
descend(X, Y):- child(X, Y).
descend(X, Y):-
    descend(X, Z), descend(Z, Y).