% Russell Folk
% CS471: Assignment 1

% Count the number of zeros in a given list and return the value N based on the
% number counted, NC, using the recursive solution.

countZeros( [] , 0 ).
countZeros( [0|Tail] , N ):-
     countZeros( Tail , NC ),
     N is NC + 1.
countZeros( [Head|Tail] , N ):-
     countZeros( Tail , NC ),
     N is NC.