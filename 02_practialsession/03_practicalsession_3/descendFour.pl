child(anne, bridget).
child(bridget, donna).
child(donna, caroline).
child(caroline, emily).

descend(X, Y):- child(X, Y).
descend(X, Y):- descend(Z, Y), child(X, Z).