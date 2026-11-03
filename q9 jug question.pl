move((A,B),(4,B)) :- A < 4.
move((A,B),(A,3)) :- B < 3.
move((A,B),(0,B)) :- A > 0.
move((A,B),(A,0)) :- B > 0.

move((A,B),(A2,B2)) :- 
    T is min(A, 3-B), A2 is A-T, B2 is B+T.

move((A,B),(A2,B2)) :- 
     T is min(B, 4-A), A2 is A+T, B2 is B-T.

goal((2,0)).

path(S, P) :- path(S,[S],P).
path(S,_,[S]) :- goal(S).
path(S,V,[S|P]) :-
    move(S,N),
    \+ member(N,V),
    path(N,[N|V],P).
