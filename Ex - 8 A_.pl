% Graph with edge costs
edge(a,b,1).
edge(a,c,4).
edge(b,d,2).
edge(b,e,5).
edge(c,f,3).
edge(d,h,3).
edge(d,j,6).
edge(e,i,2).

% Heuristic values
heuristic(a,7).
heuristic(b,6).
heuristic(c,5).
heuristic(d,4).
heuristic(e,3).
heuristic(f,4).
heuristic(h,0).
heuristic(i,0).
heuristic(j,0).

% A* Search
astar(Start, Goal, Path, Cost) :-
    heuristic(Start, H),
    astar_search([[H,0,[Start]]], Goal, RevPath, Cost),
    reverse(RevPath, Path).

astar_search([[_,Cost,[Goal|Rest]]|_],
             Goal, [Goal|Rest], Cost).

astar_search([[_,G,[Node|Rest]]|Open],
             Goal, Path, Cost) :-

    findall(
        [F1,G1,[Next,Node|Rest]],
        (
            edge(Node,Next,C),
            \+ member(Next,[Node|Rest]),
            G1 is G+C,
            heuristic(Next,H),
            F1 is G1+H
        ),
        NewPaths
    ),

    append(Open,NewPaths,AllPaths),
    sort(AllPaths,SortedPaths),
    astar_search(SortedPaths,Goal,Path,Cost).