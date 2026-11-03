% Facts

student(rahul).
student(amit).
student(priya).
student(riya).

course(java).
course(python).
course(ai).
course(dbms).

% Enrollment facts

enrolled(rahul, java).
enrolled(rahul, python).
enrolled(amit, ai).
enrolled(priya, java).
enrolled(priya, dbms).
enrolled(riya, python).

% Rules

% Check whether a student is enrolled in a course
student_enrolled(Student, Course) :-
    enrolled(Student, Course).

% Find all courses of a student
student_courses(Student, Course) :-
    enrolled(Student, Course).

% Find all students enrolled in a course
course_students(Course, Student) :-
    enrolled(Student, Course).

% Check whether a student exists
is_student(Student) :-
    student(Student).

% Check whether a course exists
is_course(Course) :-
    course(Course).