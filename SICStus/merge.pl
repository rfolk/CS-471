%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% Given a List 'Source1' and 'Source2' create a List 'Output' that merges the %
% two lists in ascending order.                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
