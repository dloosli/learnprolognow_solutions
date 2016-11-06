/** Practical Session 3.2.1 - Lösungsvorschlag
 *
 *  Anmerkung: normale Rekursion
 *
 */

connected(1, 2).
connected(3, 4).
connected(5, 6).
connected(7, 8).
connected(9, 10).
connected(12, 13).
connected(13, 14).
connected(15, 16).
connected(17, 18).
connected(19, 20).
connected(4, 1).
connected(6, 3).
connected(4, 7).
connected(6, 11).
connected(14, 9).
connected(11, 15).
connected(16, 12).
connected(14, 17).
connected(16, 19).

path(A, B):- connected(A, B).
path(A, B):- connected(A, C), path(C, B).