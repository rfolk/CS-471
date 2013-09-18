%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 2                                                         %
% 17 September 2013                                                           %
%                                                                             %
% Given specified numbers M and N, create an inclusive list of integers L     %
% from M to N.                                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

range( X , X , [ X ] ).         % if list is empty, M == N , add it
range( X , X , List ):-         % else if M == N , add to list
    append( X , [] , List ).
range( M , N , [ M | Tail ] ):- % else, recurse
    Mp1 is M + 1,
    range( Mp1 , N , Tail ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testRa1(X):-                    % [1,2,3,4,5,6,7,8,9,10]
    range( 1 , 10 , X ).
testRa2(X):-                    % [5,6,7,8,9,10]
    range( 5 , 10 , X ).
testRa3(X):-                    % [2,3,4,5,6,7,8]
    range( 2 , 8 , X ).
testRa4(X):-                    % [3]
    range( 3 , 3 , X ).
testRa5(X):-                    % [8,9]
    range( 8 , 9 , X ).
testRa6(X):-                    % [4,5,6,7,8]
    range( 4 , 8 , X ).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
