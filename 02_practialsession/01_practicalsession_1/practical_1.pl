/** Practical Session 1 - Lösungsvorschlag
 *
 *  Bemerkungen: in meinem Fall musste ich den Workplace anpassen,
 *  da ansonsten die gesamte Pfadangabe zum File nötig wäre. Dies
 *  kann beispielsweise durch Anpassen des User Init File erfolgen
 *  mit einer letzten Zeile in der Form:
 *      :- working_directory(CWD,'/Path/To/Workspace').
 *
 *  Knowledge Base laden:
 *      1 ?- [practical_1].
 *
 *  Queries:
 *      1 ?- listing.
 *      ...
 *
 *      2 ?- listing(playsAirGuitar).
 *      playsAirGuitar(mia) :-
 *          listens2Music(mia).
 *      playsAirGuitar(yolanda) :-
 *          listens2Music(yolanda).
 *      true.
 *
 */
happy(yolanda).
listens2Music(mia).

listens2Music(yolanda):-
    happy(yolanda).

playsAirGuitar(mia):-
    listens2Music(mia).

playsAirGuitar(yolanda):-
    listens2Music(yolanda).