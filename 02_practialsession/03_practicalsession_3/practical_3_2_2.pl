/** Practical Session 3.2.2 - Lösungsvorschlag
 *
 *  Anmerkung: nachfolgend die Lösung für den Teil b und c,
 *  die Lösung von Teil a steht auskommentiert am Ende des
 *  Lösungsvorschlages.
 *
 */

byCar(auckland, hamilton).
byCar(hamilton, raglan).
byCar(valmont, saarbruecken).
byCar(valmont, metz).

byTrain(metz, frankfurt).
byTrain(saarbruecken, frankfurt).
byTrain(metz, paris).
byTrain(saarbruecken, paris).

byPlane(frankfurt, bangkok).
byPlane(frankfurt, singapore).
byPlane(paris, losangeles).
byPlane(bangkok, auckland).
byPlane(singapore, auckland).
byPlane(losangeles, auckland).

step(A, B):- byCar(A, B); byTrain(A, B); byPlane(A, B).

travel(A, B):- step(A, B).
travel(A, B):- step(A, C), travel(C, B).

step(A, B, byCar(A, B)):- byCar(A, B).
step(A, B, byTrain(A, B)):- byTrain(A, B).
step(A, B, byPlane(A, B)):- byPlane(A, B).

travel(A, B, Y):- step(A, B, Y).
travel(A, C, (Y, X)):- step(A, B, Y), travel(B, C, X).

/**
* Aufgabe 3.2.2 a
*
* travel(A, B, go(A, B)):- step(A, B).
* travel(A, C, go(A, B, X)):- step(A, B), travel(B, C, X).
*
*/