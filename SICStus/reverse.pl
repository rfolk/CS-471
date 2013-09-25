%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% Given a List 'Source' take and reverse the elements in the list and store   %
% in a new list 'Output' then return list 'Output'.                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

reverse( [ ] , Output):-          % if one element in list, return one element
    append( [ ] , [ ] , Output).
reverse( [ H | T ] , Output ):-   % if two elements, check sorted
    reverse( T , Rev ),
    append( Rev , [ H ] , Output ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testRe1(Output):-                    % return [ 8 , 7 , 6 , 5 , 4 , 3 , 2 , 1 ]
    reverse( [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 ] , Output ).
testRe2(Output):-                    % return [ 8 , 1 , 2 , 9 , 3 ]
    reverse( [ 3 , 9 , 2 , 1 , 8 ] , Output ).
testRe3(Output):-                    % return [ 8 , 6 , 4 , 2 ]
    reverse( [ 2 , 4 , 6 , 8 ] , Output ).
testRe4(Output):-                    % return [ 2 , 1 ]
    reverse( [ 1 , 2 ] , Output ).
testRe5(Output):-                    % return [ 1 ]
    reverse( [ 1 ] , Output ).
testRe6(Output):-                    % return [ ]
    reverse( [ ] , Output ).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
