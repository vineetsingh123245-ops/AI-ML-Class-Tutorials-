% Graph edges
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(d,h).
edge(d,j).
edge(e,i).
edge(c,f).

% Heuristic values
heuristic(a, 7).
heuristic(b, 6).
heuristic(c, 4).
heuristic(d, 5).
heuristic(e, 3).
heuristic(f, 2).
heuristic(h, 0).
heuristic(i, 1).
heuristic(j, 2).

% Greedy Best First Search
gbfs(Start, Goal, Path) :-
    gbfs_search([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

gbfs_search([[Goal|Rest]|_], Goal, [Goal|Rest]).

gbfs_search([ [Node|Rest] | OtherPaths], Goal, Path) :-
    findall(
        [Next,Node|Rest],
        (edge(Node,Next), \+ member(Next,[Node|Rest])),
        NewPaths
    ),
    append(OtherPaths, NewPaths, AllPaths),
    sort_paths(AllPaths, SortedPaths),
    gbfs_search(SortedPaths, Goal, Path).

% Sort paths using heuristic value
sort_paths(Paths, Sorted) :-
    predsort(compare_paths, Paths, Sorted).

compare_paths(Order, [A|_], [B|_]) :-
    heuristic(A, HA),
    heuristic(B, HB),
    compare(Order, HA, HB).