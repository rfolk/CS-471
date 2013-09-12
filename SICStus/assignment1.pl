%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 1                                                         %
% 7 September 2013                                                            %
%                                                                             %
% member: checks to see if the 'Element' is part of the 'List'                %
% inter: creates a 'List 3' that is the intersection of 'List 1' and 'List 2' %
% union: creates a 'List 3' that is the union of 'List 1' and 'List 2'        %
% countZeros: counts the number of '0s' in the 'List'                         %
% sumAll: adds all the numbers in the 'List'                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

memberOf( Head , [ Head | _ ] ).       % if heads match, then done
memberOf( Head , [ _ | Tail ] ):-      % else recurse
    memberOf( Head , Tail ).           % continue checking elements

inter( [] , _ , [] ).                  % if 'List 1' is empty, done
inter( [ Head | Tail_1 ] , List_2 , [ Head | List_3 ] ):-
    memberOf( Head , List_2 ),         % if the head of 'List 1' is in 'List 2'
    !,                                 % cut the results of 'List 1'
    inter( Tail_1 , List_2 , List_3 ). % continue checking the remainder
inter( [ _ | Tail_1 ] , List_2 , List_3 ):-
    inter( Tail_1 , List_2 , List_3 ). % keep trying to find intersections

union( [] , X , X ).                   % if 'List 1' is empty, done
union( [ Head | Tail_1 ] , List_2 , List_3 ):-
    memberOf( Head , List_2 ),         % if the head of 'List 1' is in 'List 2'
    !,                                 % cut the results of 'List 1'
    union( Tail_1 , List_2 , List_3 ). % continue checking the remainder
union( [ Head | Tail_1 ] , List_2 , [ Head | Tail_3 ] ):-
    union( Tail_1 , List_2 , Tail_3 ). % keep trying to find unions

countZeros( [] , 0 ).                 % if no numbers, then 0 zeros
countZeros( [ 0 | Tail ] , N ):-      % if Head 0, then add to zeros
    countZeros( Tail , NC ),          % check recursively
    N is NC + 1.                      % add one for each zero
countZeros( [ _ | Tail ] , N ):-      % if Head is not 0, then keep checking
    countZeros( Tail , NC ),          % check recursively
    N is NC.                          % if no zero, then count remains the same

sumAll( [] , 0 ).             % if no numbers, then N is 0.
sumAll( [Head | Tail] , N ):- % if numbers, count recursively.
    sumAll( Tail , NC ),      % count recursively after the Head
    N is NC + Head.           % sum is current + the front of the list.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testI1(X):-                  % return [10,40]
    inter([10,20,30,40],[10,50,40,60],X).
testI2(X):-                  % return []
    inter([10,20,30,40],[50,60,70],X).
testI3(X):-                  % return []
    inter([],[10,20],X).

testU1(X):-                  % Result: [10,20,30,40,50,60]
    union([10,20,30,40],[10,50,40,60],X).
testU2(X):-                  % Result: [10,20,30,40]
    union([10,20,30,40],[],X).
testU3(X):-                  % Result: [10,20,30]
    union([],[10,20,30],X).

testCZ1(X):-                          % return 2
    countZeros([2,0,6,9,0,10,20], X).
testCZ2(X):-                          % return 0
    countZeros([1,2,3,10,20], X).
testCZ3(X):-                          % return 0
    countZeros([], X).

testSA1(X):-                          % return 0
    sumAll([], X).
testSA2(X):-                          % return 20
    sumAll([2,4,6,8], X).
testSA3(X):-                          % return 3
    sumAll([3], X).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
