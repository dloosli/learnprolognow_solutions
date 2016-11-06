/** Exercise 3.5 - Lösungen
 *
 *   Query 1: swap(tree(tree(leaf(1), leaf(2)), leaf(4)), T).
 *
 *   Result first step:
 *   T=tree(RightSwapped[1], LeftSwapped[1])
 *   Left[1]=tree(leaf(1), leaf(2))
 *   Right[1]=leaf(4)
 *
 *
 *      Query 2.1: swap(tree(leaf(1), leaf(2)), LeftSwapped[1]).
 *
 *      Result step 2.1:
 *      LeftSwapped[1]=tree(RightSwapped[2.1], LeftSwapped[2.1])
 *      Left[2.1]=leaf(1)
 *      Right[2.1]=leaf(2)
 *
 *         Query 2.1.1: swap(leaf(1), LeftSwapped[2.1])
 *
 *         Result step 2.1.1:
 *         LeftSwapped[2.1]=leaf(1)
 *
 *
 *         Query 2.1.2: swap(leaf(2), RightSwapped[2.1])
 *
 *         Result step 2.1.1:
 *         RightSwapped[2.1]=leaf(2)
 *
 *
 *      Query 2.2: swap(leaf(4), RightSwapped[1]).
 *
 *      Result step 2.1:
 *      RightSwapped[1]=leaf(4)
 *
 *
 *   Alles Zusammensetzen ergibt Resultat Query 1:
 *
 *   T = tree(RightSwapped[1], LeftSwapped[1])
 *       tree(RightSwapped[1], tree(RightSwapped[2.1], LeftSwapped[2.1]))
 *       tree(leaf(4), tree(leaf(2), leaf(1))
 *   true.
 */

swap(leaf(X), leaf(X)).
swap(tree(Left, Right), tree(RightSwapped, LeftSwapped)):-
    swap(Left, LeftSwapped), swap(Right, RightSwapped).