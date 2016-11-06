/** Exercise 1.4 - Lösungen
 *
 *  gemäss Buch Aufgabe 4:
 *    kill(marsellus, X):- give(X, mia, Y), footmassage(Y).
 */

killer(butch).
married(mia, marsellus).
dead(zed).

kills(marsellus, X):-
    givingfootmassages(X, mia).

loves(mia, X):-
    goodDancer(X).

eats(jules, X):-
    nutritious(X); tasty(X).