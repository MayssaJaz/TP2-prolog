calcul :-write('donnez n ='),nl,read(N),write('donnez la liste des entiers'),nl,boucle(N,S,M),write('Somme ='),write(S),nl,write('Max ='),write(M).
boucle(N,S,M):- N>1, N1 is N-1, read(X),boucle(N1,S1,M1), S is S1+X, M is max(X,M1).
boucle(1,X,X) :-read(X).
