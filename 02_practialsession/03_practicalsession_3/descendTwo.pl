child(anne, bridget).
child(bridget, donna).
child(donna, caroline).
child(caroline, emily).

descend(X, Y):- child(X, Z), descend(Z, Y).
descend(X, Y):- child(X, Y).