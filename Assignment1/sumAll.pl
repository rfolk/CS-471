% Russell Folk
% CS471: Assignment 1

% Sum all the numbers in a list and return the value N.
sumAll( [] , 0 ).             % if no numbers, then N is 0.
sumAll( [Head | Tail] , N ):- % if numbers, count recursively.
    sumAll( Tail , NC ),      % count recursively after the Head
    N is NC + Head.           % sum is current + the front of the list.