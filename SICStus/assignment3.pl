%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% sorted: Given a list 'Source', check to see if the elements are in          %
%         ascending order.                                                    %
% reverse: Given a List 'Source' take and reverse the elements in the list    %
%          and store in a new list 'Output' then return list 'Output'.        %
% remove_duplicates: Given a List 'Source' of integers, remove all duplicates %
%                    from source and return List 'Output'.                    %
% merge: Given a List 'Source1' and 'Source2' create a List 'Output' that     %
%        merges the two lists in ascending order.                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sorted( [ ] ).                                  % if the list is empty, is sorted
sorted( [ _ ] ).                                % if one element in list, is sorted
sorted( [ Head1 , Head2 ] ):-                   % if two elements, check sorted
    Head1 < Head2.                              % if ascending, is sorted
sorted( [ Head1 , Head2 | Tail ] ):-            % if more than 2, recurse to check sorted
    Head1 < Head2,                              % check ascending
    sorted( [ Head2 | Tail ] ).                 % recurse

reverse( [ ] , Output):-                        % if one element in list, return one element
    append( [ ] , [ ] , Output).
reverse( [ H | T ] , Output ):-                 % if two elements, check sorted
    reverse( T , Rev ),
    append( Rev , [ H ] , Output ).

remove_duplicates( [ ] , Output ):-
    append( [ ] , [ ] , Output ).               % if empty, append empty
remove_duplicates( [ Head | Tail ] , Output ):-
    member( Head , Tail ),                      % Head is a duplicate
    remove_duplicates( Tail , Output ).         % continue with rest of list
remove_duplicates( [ Head | Tail ] , Output ):-
    \+member( Head , Tail ),                    % Head is not a duplicate
    remove_duplicates( Tail , Clean ),          % recurse through list
    append( [ Head ] , Clean , Output ).        % append Head to list

merge( [ ] , [ ] , Output ):-                   % if empty list, append empty list
    append( [ ] , [ ] , Output ).
merge( [ Head1 | Tail1 ] , [ ] , Output ):-     % if only first list, append first list
    append( [ Head1 | Tail1 ] , [ ] , Output ).
merge( [ ] , [ Head1 | Tail1 ] , Output ):-     % if only second list, append second list
    append( [ Head1 | Tail1 ] , [ ] , Output ).
merge( [ Head1 | Tail1 ] , [ Head2 | Tail2 ] , Output ):-
    Head1 < Head2 ,                             % if first head smaller, append first
    merge( Tail1 , [ Head2 | Tail2 ] , Recurse ),
    append( [ Head1 ] , Recurse , Output ).
merge( [ Head1 | Tail1 ] , [ Head2 | Tail2 ] , Output ):-
    Head2 < Head1 ,                             % if second head smaller, append first
    merge( [ Head1 | Tail1 ] , Tail2 , Recurse ),
    append( [ Head2 ] , Recurse , Output ).
merge( [ Head1 | Tail1 ] , [ Head2 | Tail2 ] , Output ):-
    Head1 is Head2 ,                            % if both heads same, append both
    merge( Tail1 , Tail2 , Recurse ),
    append( [ Head1 , Head2 ] , Recurse , Output ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testSo1(_):-                          % return yes
    sorted( [ 1 , 2 , 3 , 4 ] ).
testSo2(_):-                          % return yes
    sorted( [ 3 , 6 , 9 ] ).
testSo3(_):-                          % return no
    sorted( [ 1 , 3 , 5 , 2 ] ).
testSo4(_):-                          % return no
    sorted( [ 8 , 2 ] ).
testSo5(_):-                          % return yes
    sorted( [ 4 ] ).
testSo6(_):-                          % return yes
    sorted( [ ] ).

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

testRD1(L):-                          % return [ 2 , 1 ]
    remove_duplicates( [ 1 , 2 , 1 ] , L ).
testRD2(L):-                          % return [ 3 , 5 ]
    remove_duplicates( [ 3 , 5 , 3 , 5 , 3 , 5 ] , L ).
testRD3(L):-                          % return [ 4 , 6 , 8 , 0 , 2 ]
    remove_duplicates( [ 0 , 2 , 4 , 6 , 0 , 8 , 2 , 0 , 2 , 2 ] , L ).
testRD4(L):-                          % return [ 1 , 2 , 3 , 4 , 5 ]
    remove_duplicates( [ 1 , 2 , 3 , 4 , 5 ] , L ).
testRD5(L):-                          % return [ 5 ]
    remove_duplicates( [ 5 ] , L ).
testRD6(L):-                          % return [ ]
    remove_duplicates( [ ] , L ).

testMe1(Output):-                          % return [ 5 , 10 , 15 , 18 , 20 , 30 , 35 , 40 ]
    merge( [ 10 , 20 , 30 , 40 ] , [ 5 , 15 , 18 , 35 ] , Output ).
testMe2(Output):-                          % return [ 10 , 20 , 30 , 40 ]
    merge( [ 10 , 20 , 30 , 40 ] , [ ] , Output ).
testMe3(Output):-                          % return [ 5 , 15 , 18 , 35 ]
    merge( [ ] , [ 5 , 15 , 18 , 35 ] , Output ).
testMe4(Output):-                          % return [ 1 , 2 , 3 , 4 , 10 , 20 , 30 , 40 ]
    merge( [ 10 , 20 , 30 , 40 ] , [ 1 , 2 , 3 , 4 ] , Output ).
testMe5(Output):-                          % return [ 10 , 20 , 22 , 25 , 28 , 30 , 40 , 50 , 55 ]
    merge( [ 10 , 20 , 30 , 40 ] , [ 22 , 25 , 28 , 50 , 55 ] , Output ).
testMe6(Output):-                          % return [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 ]
    merge( [ 1 , 3 , 5 , 7 , 9 ] , [ 2 , 4 , 6 , 8 , 10 ] , Output ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
