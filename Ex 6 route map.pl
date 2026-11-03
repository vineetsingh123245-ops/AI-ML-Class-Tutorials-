%rout map

road(odisha,punjab).
road(punjab,himachal).
road(himachal,kashmir).
road(kashmir,odisha).
road(odisha,oty).

%route recommend
travel(X,Y):-
    road(X,Y).

travel(X,Y):-
     road(X,Z),
     travel(Z,Y).