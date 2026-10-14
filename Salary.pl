% Facts

salary(anjali, 75000).
salary(rachana, 55000).
salary(sai, 30000).

% Rules

high_salary(X) :-
    salary(X, S),
    S > 50000.

medium_salary(X) :-
    salary(X, S),
    S >= 30000,
    S =< 50000.

low_salary(X) :-
    salary(X, S),
    S < 30000.

    