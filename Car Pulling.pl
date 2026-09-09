%fact

driver(anjali,ramapur, karad).
driver(sakshi,kharsudi, vita).
driver(rachana,pune, mumbai).

%passenger info

passenger(ayush,ramapur, karad).
passenger(sai,kharsudi, vita).
passenger(samu,pune, mumbai).

%rule

car_pulling(Driver,Passenger):-
    driver(Driver,From,To),
    passenger(Passenger,From,To).