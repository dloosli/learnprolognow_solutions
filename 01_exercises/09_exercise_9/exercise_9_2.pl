/** Exercise 9.2 - Lösungen
 *
 *  Note: In SWI Prolog the dot Operator, means ./2, seems to be
 *  reserved for another internal use. So the following solutions
 *  are copied from the official solutions in the book.
 *
 *      1 ?- .(a, .(b, .(c, []))) = [a, b, c].
 *      true.
 *
 *      2 ?- .(a, .(b, .(c, []))) = [a, b | [c]].
 *      true.
 *
 *      3 ?- .(.(a, []), .(.(b, []), .(.(c, []), []))) = X.
 *      X = [[a], [b], [c]]
 *      true.
 *
 *      4 ?- .(a, .(b, .(.(c, []), []))) = [a, b | [c]].
 *      false.
 *
 */
