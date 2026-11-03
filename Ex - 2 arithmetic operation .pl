% Basic arithmetic operations
add(A,B,Result):-
    Result is A+B.
subtract(A,B,Result):-
    Result is A-B.
multiply(A,B,Result):-
    Result is A*B.
divide(A,B,Result):-
    B=\=0,
    Result is A/B.

% Factorial
factorial(0,1).
factorial(N,Result):-
    N>0,
    N1 is N-1,
    factorial(N1,R),
    Result is N*R.

% Fibonacci
fibonacci(0,0).
fibonacci(1,1).

fibonacci(N, Result):-
    N>1,
    N1 is N-1,
    N2 is N-2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1+R2.
fib_series(N, Series):-
    fib_series(0, N, Series).
fib_series(_, 0, []).
fib_series(I, N, [F|Rest]):-
    N>0,
    fibonacci(I,F),
    I1 is I+1,
    N1 is N-1,
    fib_series(I1,N1, Rest).