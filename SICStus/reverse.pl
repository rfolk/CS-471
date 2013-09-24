%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% Given a List 'source' take and reverse the elements in the list and store   %
% in a new list 'L' then return list 'L'.                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reverse( [ ] , L ):-          % if one element in list, return one element
    append( [ ] , [ ] , L ).
reverse( [ H | T ] , L ):-     % if two elements, check sorted
    reverse( T , Rev ),
    append( Rev , [ H ] , L ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testRe1(L):-                          % return [ 8 , 7 , 6 , 5 , 4 , 3 , 2 , 1 ]
    reverse( [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 ] , L ).
testRe2(L):-                          % return [ 8 , 1 , 2 , 9 , 3 ]
    reverse( [ 3 , 9 , 2 , 1 , 8 ] , L ).
testRe3(L):-                          % return [ 8 , 6 , 4 , 2 ]
    reverse( [ 2 , 4 , 6 , 8 ] , L ).
testRe4(L):-                          % return [ 2 , 1 ]
    reverse( [ 1 , 2 ] , L ).
testRe5(L):-                          % return [ 1 ]
    reverse( [ 1 ] , L ).
testRe6(L):-                          % return [ ]
    reverse( [ ] , L ).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
