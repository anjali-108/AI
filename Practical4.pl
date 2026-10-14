%facts

marks(anjali,89).
marks(rachana,75).
marks(sham,32).

%Rules

pass(X) :-
    marks(X, M), M >= 35.

fail(X):-
    marks(X,M), M < 35.    

distinction(X):-
    marks(X,M), M >= 85.    