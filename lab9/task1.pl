female(sue).
female(mary).
female(ann).
female(tammy).

male(bill).
male(joe).
male(paul).
male(jim).
male(bob).

parent(bill, joe).
parent(sue, joe).
parent(bill, ann).
parent(sue, ann).
parent(joe, tammy).
parent(paul, jim).
parent(mary, jim).
parent(jim, bob).
parent(ann, bob).

/*
Составить вопрос и найти в базе данных бабушку для bob.
grandmother(X, bob).
result: sue, mary
*/
grandmother(X, Y) :- female(X), parent(X, Z), parent(Z, Y).

/*
Составить вопрос и найти в базе данных внука
grandson(X, sue).
result: bob
*/
grandson(X, Y) :- male(X), parent(Y, Z), parent(Z, X).

/*
Составить вопрос и найти в базе данных сестру для jim
sister(X, jim).
result: ann
*/
different(X, Y) :- X \= Y.
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), different(X, Y).

/*
Определите отношение "тётя"
aunt(ann, tammy).
result: Yes
*/
aunt(X, Y) :- sister(X, Z), parent(Z, Y).

/*
Определите отношение "кузин"
cousin(tammy, bob).
result: Yes
*/
sibling(X, Y) :- parent(Z, X), parent(Z, Y), different(X, Y).
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).