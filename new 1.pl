parent(bob,linda).
parent(marry,linda).
parent(bob,amanda).
parent(marry,amanda).
parent(linda,peppa).
parent(kolyan,peppa).
parent(linda,rose).
parent(kolyan,rose).
parent(gorgh,angelina).
parent(peppa,angelina).
parent(angelina,natalie).
parent(bred,natalie).
parent(elizabeth,hasbulla).
parent(richard,hasbulla).
man(bob).
man(kolyan).
man(gorgh).
man(bred).
man(richard).
man(hasbulla).
woman(marry).
woman(linda).
woman(amanda).
woman(peppa).
woman(rose).
woman(angelina).
woman(elizabeth).
woman(natalie).
married(bob,marry).
married(kolyan,linda).
married(gorgh,peppa).
married(bred,angelina).
married(richard,elizabeth).
married(hasbulla,natalie).
sister(X,Y):-parent(Z,X), parent(Z,Y),woman(X), woman(Y).
granddaughter(X,Y):- parent(Y,Z), parent(Z,X), woman(X), not(X=Y).
two_granddaughter(X,Y):-parent(Y,Z), parent(Z,W), parent(W,F),parent(F,X),woman(X),not(X=Y).
husband_father(X,Y):-parent(X,Z), married(Z,Y), man(X), not(X=Y).
second_cousin_aunt(X,Y):-sister(X,Z),parent(Z,W),parent(W,F), parent(F,Y), woman(X),woman(Y),not(parent(X,W)),not(X=Y).
n_cousin_aunt(X,Y,N):-
	N>1.
	sister(X,Y).
	parent(