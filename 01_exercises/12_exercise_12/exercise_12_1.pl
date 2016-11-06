/** Exercise 12.1 - Lösungen
 *
 */

writeHogwartsFile:-
    open('hogwart.houses', write, Stream),
    tab(Stream, 7), write(Stream, 'gryffindor'), nl(Stream),
    write(Stream, 'hufflepuff'), tab(Stream, 5), write(Stream, 'ravenclaw'), nl(Stream),
    tab(Stream, 7), write(Stream, 'slytherin'), nl(Stream),
    close(Stream).