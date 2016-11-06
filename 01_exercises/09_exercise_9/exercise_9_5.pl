/** Exercise 9.5 - Lösungen
 *
 *  (1) <X is_a witch> is correct and should result in
 *  something like <is_a(X, witch)>.
 *
 *  (2) <harry and ron and hermione are friends> is also
 *  correct and should result in a term like
 *  <are(and(harry, and(ron, hermione)), friends)>.
 *
 *  (3) <harry is_a wizard and likes quidditch> is not
 *  a correct prolog term and results in a operator
 *  priority clash between the 'and' and the 'likes'
 *  operator. Brackets around 'likes quidditch' should
 *  solve that.
 *
 *  (4) <dumbledore is_a famous wizard> is also
 *  correct and should result in a term like
 *  <is_a(dumbledore, famous(wizard))>.
 *
 */

:- op(300, xfx, [are, is_a]).
:- op(300, fx, likes).
:- op(200, xfy, and).
:- op(100, fy, famous).