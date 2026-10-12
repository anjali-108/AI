% City connections
edge(vita, pune).
edge(pune, mumbai).
edge(mumbai, delhi).
edge(vita, kolhapur).
edge(kolhapur, delhi).

% BFS algorithm
bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

% Goal found
bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

% Explore next cities
bfs_queue([[City|Path]|Queue], Goal, Result) :-
    findall([Next,City|Path],
            (edge(City, Next),
             \+ member(Next, [City|Path])),
            NewPaths),
    append(Queue, NewPaths, NewQueue),
    bfs_queue(NewQueue, Goal, Result).% City connections

