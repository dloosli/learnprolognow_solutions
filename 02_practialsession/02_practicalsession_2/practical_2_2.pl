/** Practical Session 2.1 - Lösungsvorschlag
 *
 *  Anmerkung: Knowledge Base analog Buch, einfach mit
 *  spannenderen Prädikaten ;)
 *
 *  Queries:
 *
 *      1 ?- [practical_2_2].
 *      true.
 *
 *      2 ?- trace.
 *      true.
 *
 *      [trace] 2 ?- fightsVoldemort(harry).
 *      Call: (7) fightsVoldemort(harry) ? creep
 *      Call: (8) wizard(harry) ? creep
 *      Exit: (8) wizard(harry) ? creep
 *      Call: (8) magic(harry) ? creep
 *      Exit: (8) magic(harry) ? creep
 *      Call: (8) parseltongue(harry) ? creep
 *      Exit: (8) parseltongue(harry) ? creep
 *      Exit: (7) fightsVoldemort(harry) ? creep
 *      true.
 *
 *      [trace] 3 ?- notrace, nodebug.
 *      true.
 *
 */

wizard(ron).
wizard(harry).

magic(ron).
magic(harry).

parseltongue(harry).

fightsVoldemort(X):- wizard(X), magic(X), parseltongue(X).