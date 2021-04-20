personne(k,f,85,tunis).
personne(c,m,63,nabeul).
personne(d,f,60,nabeul).
personne(e,m,35,tunis).
personne(g,f,27,sousse).
personne(h,f,39,nabeul).
personne(i,m,40,nabeul).
personne(j,m,17,sousse).
personne(1,f,9,sousse).
personne(m,f,19,tunis).
personne(n,m,1,tunis).
individu(X):-personne(X,_,_,_).
masculin(X):-personne(X,m,_,_).
feminin(X):-personne(X,f,_,_).
est_age_de(X,Y):-personne(X,_,Y,_).
habite_a(X,Y):-personne(X,_,_,Y).
majeur(X):-personne(X,_,Y,_),Y>=18.
mineur(X):-personne(X,_,Y,_),Y<18.
meme_age(X,Y):-personne(X,_,A,_),personne(Y,_,B,_),A=B.
habite_la_meme_ville(X,Y) :-  personne(X,_,_,A),personne(Y,_,_,B), A=B .
epoux_possible(X,Y):-personne(X,m,A,_),personne(Y,f,B,_),majeur(X),majeur(Y),A-B<20.
meme_ville_g(X):-habite_la_meme_ville(X,g).
habite_tunis(X):-personne(X,_,_,tunis).
mineur_tunis(X):-habite_tunis(X),mineur(X).
epoux_possible_g(X):-epoux_possible(X,g).
epoux_possible_tunis(X,Y):-epoux_possible(X,Y),habite_tunis(X).
personne(k,f,85,tunis,prof,1200).
personne(c,m,63,nabeul,ingenieur,2000).
personne(d,f,60,nabeul,manager,2500).
personne(e,m,35,tunis,prof,1500).
personne(g,f,27,sousse,banquier,1500).
personne(h,f,39,nabeul,pharmacien,1800).
personne(i,m,40,nabeul,ingenieur,1700).
personne(j,m,17,sousse,menuisier,1000).
personne(1,f,9,sousse,docteur,3000).
personne(m,f,19,tunis,pilote,3000).
personne(n,m,1,tunis,cuisinier,2500).
meme_profession(X,Y):-personne(X,_,_,_,A,_),personne(Y,_,_,_,B,_),A=B.
gagne_plus(X,Y):-personne(X,_,_,_,_,A),personne(Y,_,_,_,_,B),A>B.
salaire_meme_ordre(X,Y):-personne(X,_,_,_,_,A),personne(Y,_,_,_,_,B),(A-B < A*0.8,A>=B;B-A<B*0.8,A=<B).















