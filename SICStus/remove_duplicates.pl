%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% Given a List 'Source' of integers, remove all duplicates from source and    %
% and return List 'Output'.                                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

remove_duplicates( [ ] , Output ):-
    append( [ ] , [ ] , Output ).               % if empty, append empty
remove_duplicates( [ Head | Tail ] , Output ):-
    member( Head , Tail ),                      % Head is a duplicate
    remove_duplicates( Tail , Output ).         % continue with rest of list
remove_duplicates( [ Head | Tail ] , Output ):-
    \+member( Head , Tail ),                    % Head is not a duplicate
    remove_duplicates( Tail , Clean ),          % recurse through list
    append( [ Head ] , Clean , Output ).        % append Head to list


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
