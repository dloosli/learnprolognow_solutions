/** Practical Session 11.2 - Lösungsvorschlag
 *
 *  Anmerkung: analog zum Aufgabenteil 11.1 - Die vorliegende
 *  Lösung funktioniert zwar, ist jedoch wohl kaum im Sinne
 *  der Aufgabestellung gelöst.
 *
 */

powerset(Set, Powerset):-
    findall(X, subset(X, Set), Powerset).

subset(Subset, InputSet):-
    (var(Subset) -> Subset = SubsetCorrected; setof(X, member(X, Subset), SubsetCorrected)),
    setof(X, member(X, InputSet), InputSetCorrected),
    subsetacc(SubsetCorrected, [], InputSetCorrected).

subsetacc([], _, _).
subsetacc([Head | Tail], Acc, Right):-
    member(Head, Right), Acc = [], subsetacc(Tail, [Head | Acc], Right);
    member(Head, Right), Acc = [AccHead | _], Head @> AccHead, subsetacc(Tail, [Head | Acc], Right).