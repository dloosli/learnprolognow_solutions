/** Exercise 2.2 - Lösungen
 *
 *  Vorbemerkung: die nachfolgende Knowledge Base gibt grundsätzlich für
 *  sämtliche Queries unter SWI Prolog eine Fehlermeldung aus, da das
 *  Prädikat wizard(X) nicht definiert ist. Anpassung -> auskommentieren
 *
 *      1 ?- [exercise_2_2].
 *      true.
 *
 *      2 ?- magic(house_elf).
 *      false.
 *
 *      3 ?- wizard(harry).
 *      ERROR: toplevel: Undefined procedure: wizard/1 (DWIM could not correct goal)
 *
 *      4 ?- magic(wizard).
 *      false.
 *
 *      5 ?- magic('McGonagall').
 *      true.
 *
 *      6 ?- magic(Hermione).
 *      Hermione = dobby
 *      Hermione = hermione
 *      Hermione = 'McGonagall'
 *      Hermione = rita_skeeter.
 *
 *  Beweisbaum: gemäss Beilage searchtree_2_2.pdf
 *
 */

house_elf(dobby).

witch(hermione).
witch('McGonagall').
witch(rita_skeeter).

magic(X):- house_elf(X).
%! magic(X):- wizard(X).
magic(X):- witch(X).