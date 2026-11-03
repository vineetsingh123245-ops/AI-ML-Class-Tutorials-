marks(student1,85).
marks(student2,50).
marks(student3,20).

good_marks(Student,Marks):-
    marks(Student,Marks).
    
average_marks(Student,Marks):-
    marks(Student,Marks).
    
poor_marks(Student,Marks):-
    marks(Student,Marks).