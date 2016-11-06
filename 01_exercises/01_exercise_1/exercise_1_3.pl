/** Exercise 1.3 - Lösungen
 *
 *  Knowledge Base besteht aus 3 Fakten und 4 Regeln. Die Fakten sind
 *  woman(vincent), woman(mia), man(jules) bestehend aus den Prädikaten
 *  woman/1 und man/1. Die 4 Regeln besitzen die Heads person/1, loves/2
 *  und father/2 sowie die Goals man/1, woman/1, father/2, son/2 und
 *  daughter/2.
 *
 */

woman(vincent).
woman(mia).
man(jules).

person(X):-
    man(X); woman(X).

loves(X, Y):-
    father(X, Y).

father(Y, Z):-
    man(Y), son(Z, Y).

father(Y, Z):-
    man(Y), daughter(Z, Y).