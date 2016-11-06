/** Practical Session 11.1 - Lösungsvorschlag
 *
 *  Anmerkung: Die Lösung funktioniert zwar, ist jedoch wohl kaum
 *  im Sinne der Aufgabestellung gelöst. Meine erste Idee war, mit
 *  setof() eine Liste von Listen ohne Duplikate zu erstellen aus
 *  dem Resultat der Rekursion - allerdings scheinen Listen als
 *  unterschiedlich zu gelten, sobald ihre Elemente nicht in der
 *  gleichen Reihenfolge vorliegen. Die nachfolgende Lösung wandelt
 *  die eingegenbenen Listen zuerst in geordnete Sets um und ver-
 *  arbeitet diese dann entsprechend der Aufgabestellung.
 *
 */

subset(Subset, InputSet):-
    (var(Subset) -> Subset = SubsetCorrected; setof(X, member(X, Subset), SubsetCorrected)),
    setof(X, member(X, InputSet), InputSetCorrected),
    subsetacc(SubsetCorrected, [], InputSetCorrected).

subsetacc([], _, _).
subsetacc([Head | Tail], Acc, Right):-
    member(Head, Right), Acc = [], subsetacc(Tail, [Head | Acc], Right);
    member(Head, Right), Acc = [AccHead | _], Head @> AccHead, subsetacc(Tail, [Head | Acc], Right).