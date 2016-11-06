/** Exercise 3.3 - Lösungen
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

travelFromTo(A, B):- directTrain(A, B).
travelFromTo(A, B):- directTrain(A, C), travelFromTo(C, B).