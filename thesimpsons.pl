male(abraham).
male(clancy).
male(herb).
male(homber).
male(patty).
male(bart).

female(mona).
female(jackie).
female(marge).
female(selma).
female(lisa).
female(maggie).
female(ling).


parent(abraham, herb).
parent(mona, herb).

parent(abraham, homber).
parent(mona, homber).

parent(clancy, marge).
parent(jackie, marge).

parent(clancy, patty).
parent(jackie, patty).

parent(clancy, selma).
parent(jackie, selma).

parent(homber, bart).
parent(marge, bart).

parent(homber, lisa).
parent(marge, lisa).

parent(homber, maggie).
parent(marge, maggie).

parent(selma, ling).




mother(X, Y):-
    female(X),
    parent(X, Y).

father(X, Y):-
    male(X),
    parent(X, Y).

sister(X, Y):-
    female(X),
    parent(Z, X),
    parent(Z, Y).

brother(X, Y):-
    male(X),
    parent(Z, X),
    parent(Z, Y).

son(X, Y):-
    male(X),
    parent(Y, X).

daughter(X, Y):-
    female(X),
    parent(Y, X).

grandfather(X, Y):-
    male(X),
    parent(X, Z),
    parent(Z, Y).

aunt(X, Y):-
    female(X),
    parent(Z, Y),
    brother(Z, X).

aunt(X, Y):-
    female(X),
  parent(Z, Y),
    sister(Z, X).



uncle(X, Y):-
    male(X),
    parent(Z, X),
   parent(Z, W),
    parent(W, Y).

cousin(X, Y):-
    parent(Z, X),
    parent(W, Y),
    parent(V, Z),
    parent(V, W).

ancestor(X, Y):-
    parent(Y, X).

ancestor(X, Y):-
    parent(Y, Z),
    ancestor(X, Z).



