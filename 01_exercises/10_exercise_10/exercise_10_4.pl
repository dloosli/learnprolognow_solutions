/** Exercise 10.4 - Lösungen
 *
 */

directTrain(saarbruecken, dudweiler).
directTrain(forbach, saarbruecken).
directTrain(freyming, forbach).
directTrain(stAvold, freyming).
directTrain(falquemont, stAvold).
directTrain(metz, falquemont).
directTrain(nancy, metz).
directTrain(zuerich, nancy).

route(From, To, [From, To | []]):-
    directTrain(From, To);
    directTrain(To, From).

route(From, To, [From | Path]):-
    (directTrain(From, Stopover); directTrain(Stopover, From)), route(Stopover, To, Path), !.