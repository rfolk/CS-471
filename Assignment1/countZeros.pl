%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 1                                                         %
% 7 September 2013                                                            %
%                                                                             %
% Count the number of zeros in a given list and return the value N based on   %
% the number counted, NC, using the recursive solution.                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countZeros( [] , 0 ).                 % if no numbers, then 0 zeros
countZeros( [ 0 | Tail ] , N ):-      % if Head 0, then add to zeros
    countZeros( Tail , NC ),          % check recursively
    N is NC + 1.                      % add one for each zero
countZeros( [ Head | Tail ] , N ):-   % if Head is not 0, then keep checking
    countZeros( Tail , NC ),          % check recursively
    N is NC.                          % if no zero, then count remains the same

testCZ1(X):-                          % test case, should return 4
    countZeros([0,0,0,0,1,2,3,4], X).
testCZ2(X):-                          % test case, should return 1
    countZeros([02,0,05,2,4,3,1], X).
testCZ3(X):-                          % test case, should return 0
    countZeros([02,1,05,2,4,3,1], X).
