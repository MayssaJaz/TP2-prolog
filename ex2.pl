argent(jean).
argent(alain).
vacances(jean):-mois(aout).
vacances(juillet):-mois(juillet).
mois(juillet).
soleil:-mois(aout).
reussit(jean,travail).
reussit(alain,travail).
reussit(alain,famille).
bonne_humeur(X):-argent(X),vacances(X),soleil.
bonne_humeur(X):-reussit(X,famille),reussit(X,travail).


















