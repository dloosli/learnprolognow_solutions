/** Exercise 4.5 - Lösungen
 *
 */
translate(eins, one).
translate(zwei, two).
translate(drei, three).
translate(vier, four).
translate(fuenf, five).
translate(sechs, six).
translate(sieben, seven).
translate(acht, eigth).
translate(neun, nine).

listtranslate([], []).
listtranslate([D | Deutsch], [E | English]):- translate(D,E), listtranslate(Deutsch, English).
