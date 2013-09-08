%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 1                                                         %
% 7 September 2013                                                            %
%                                                                             %
% Sum all the numbers in a list and return the value N.                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sumAll( [] , 0 ).             % if no numbers, then N is 0.
sumAll( [Head | Tail] , N ):- % if numbers, count recursively.
    sumAll( Tail , NC ),      % count recursively after the Head
    N is NC + Head.           % sum is current + the front of the list.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testSum1(X):-                         % return 10
    sumAll([1,2,3,4], X).
testSum2(X):-                         % return 25
    sumAll([5,5,5,5,5], X).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%