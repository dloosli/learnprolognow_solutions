/** Exercise 11.2 - Lösungen
 *
 *      1 ?- [exercise_11_2].
 *      true.
 *      <Erklärung: klar, normale Anwendung>
 *
 *      2 ?- findall(X, q(blob, X), Result).
 *      Result = [blug, blag, blig].
 *      <Erklärung: klar, normale Anwendung>
 *
 *      3 ?- findall(X, q(X, blug), Result).
 *      Result = [blob, dang].
 *      <Achtung: wird nur nach X gesucht, deshalb bswp. kein blig>
 *
 *      4 ?- findall(X, q(X, Y), Result).
 *      Result = [blob, blob, blob, blaf, dang, dang, flab].
 *      <Erklärung: klar, normale Anwendung>
 *
 *      5 ?- bagof(X, q(X, Y), Result).
 *      Y = blag, Result = [blob, blaf];
 *      Y = blig, Result = [blob];
 *      Y = blob, Result = [flab];
 *      Y = blug, Result = [blob, dang];
 *      Y = dong, Result = [dang].
 *      <Erklärung: klar, normale Anwendung>
 *
 *      6 ?- setof(X, Y^q(X, Y), Result).
 *      Result = [blaf, blob, dang, flab].
 *      <Erklärung: normale Anwendung, d.h. sortierte Liste ohne
 *      Duplikate und Instantiierungen von Y weglassen.>
 *
 */

q(blob, blug).
q(blob, blag).
q(blob, blig).
q(blaf, blag).
q(dang, dong).
q(dang, blug).
q(flab, blob).