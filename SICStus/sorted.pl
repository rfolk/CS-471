%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% Given a list 'L', check to see if the elements are in assorting order.      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sorted( [ ] ).              % if the list is empty, is sorted
sorted( [ _ ] ).            % if one element in list, is sorted
sorted( [ H1 , H2 ] ):-     % if two elements, check sorted
    H1 < H2.                % if ascending, is sorted
sorted( [ H1 , H2 | T ] ):- % if more than 2, recurse to check sorted
    H1 < H2,                % check ascending
    sorted( [ H2 | T ] ).   % recurse

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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
