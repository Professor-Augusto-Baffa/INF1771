progenitor(sara,isaque).  
progenitor(abra�o,isaque).
progenitor(abra�o,ismael).
progenitor(isaque,esa�).
progenitor(isaque,jac�).
progenitor(jac�,jos�).

mulher(sara).
homem(abra�o).
homem(isaque).
homem(ismael).
homem(esa�).
homem(jac�).
homem(jos�).


filho(Y,X) :- progenitor(X,Y).

mae(X,Y) :- progenitor(X,Y), mulher(X).
%pai(X,Y) :- progenitor(X,Y), homem(X).

avo(X,Z) :- progenitor(X,Y), progenitor(Y,Z).
%av�(X,Z) :- (m�e(X,Y),m�e(Y,Z)); (m�e(X,Y),pai(Y,Z)).
%av�(X,Z) :- (pai(X,Y),m�e(Y,Z)); (pai(X,Y),pai(Y,Z)).

irmao(X,Y) :- progenitor(Z,X), progenitor(Z,Y).

ancestral(X,Z) :- progenitor(X,Z), !.
ancestral(X,Z) :- progenitor(X,Y), ancestral(Y,Z).



tem_filho(X) :- progenitor(X,_).
algu�m_tem_filho :- progenitor(_,_).

