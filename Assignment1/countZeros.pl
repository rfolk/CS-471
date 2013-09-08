% Russell Folk
% CS471: Assignment 1

% Count the number of zeros in a given list and return the value N based on the
% number counted, NC, using the recursive solution.

countZeros( [] , 0 ).                % if no numbers, then 0 zeros.
countZeros( [ 0 | Tail ] , N ):-     % if Head 0, then add to zeros.
    countZeros( Tail , NC ),         % check recursively
    N is NC + 1.                     % add one for each zero.
countZeros( [ Head | Tail ] , N ):-  % if Head is not 0, then keep checking.
    countZeros( Tail , NC ),         % check recursively
    N is NC.                         % if no zero, then count remains the same.