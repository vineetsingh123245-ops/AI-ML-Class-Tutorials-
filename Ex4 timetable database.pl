timetable(monday,'9:00',python,hello,room1).
timetable(tuesday,'11:00',ai/ml,hello2,room2).
timetable(wednesday,'12:00',dsa,hello3,room3).
timetable(thusday,'1:00',practical,hello,room4).
timetable(friday,'2:00',maths,hello5,room5).
timetable(saturday,'10:00',cp,hello6,room6).

% faculty schedule

faculty_sh(Faculty,Day,Time,Subject,Room):-
    timetable(Day,Time,Subject,Faculty,Room).

%teaching Subject

teaching_sub(Subject,Faculty):-
    timetable(_,_,Subject,Faculty,_).

%class room

class_room(Room,Day,Faculty,Subject):-
    timetable(Day,_,Subject,Faculty,Room).