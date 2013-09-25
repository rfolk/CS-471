%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 3                                                         %
% 24 September 2013                                                           %
%                                                                             %
% Given a list 'Source', check to see if the elements are in assorting order. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sorted( [ ] ).                        % if the list is empty, is sorted
sorted( [ _ ] ).                      % if one element in list, is sorted
sorted( [ Head1 , Head2 ] ):-         % if two elements, check sorted
    Head1 < Head2.                    % if ascending, is sorted
sorted( [ Head1 , Head2 | Tail ] ):-  % if more than 2, recurse to check sorted
    Head1 < Head2,                    % check ascending
    sorted( [ Head2 | Tail ] ).       % recurse

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
