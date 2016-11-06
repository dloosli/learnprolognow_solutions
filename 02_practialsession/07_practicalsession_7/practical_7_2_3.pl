/** Practical Session 7.2.3 - Lösungsvorschlag
 *
 *  @usage: <prop([!, '(', p, '->', q, ')'], []).>
 *
 */

prop -->
    [p]; [q]; [r]; not, prop;
    openParenth, prop, land, prop, closParenth;
    openParenth, prop, lor, prop, closParenth;
    openParenth, prop, limplies, prop, closParenth.

not --> ['!'].
openParenth --> ['('].
closParenth --> [')'].
land --> ['AND'].
lor --> ['OR'].
limplies --> ['->'].