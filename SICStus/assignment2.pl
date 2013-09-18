%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 2                                                         %
% 17 September 2013                                                           %
%                                                                             %
% equal: checks to see if every 'Element' in the 'List' is equal              %
% drop: creates a 'List 2' that removes the first 'N' elements from 'List 1'  %
% range: creates a 'List' that is the ascending integers from 'M' to 'N'      %
% element: sets 'X' to be element 'N' from the 'List'                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

equal( [] ).                       % if the list is empty, all elements equal
equal( [ _ | [] ] ).               % if there is 1 element, all elements equal
equal( [ Head | Tail ] ):-
    member( Head , Tail ),         % if head is in the tail, continue
    !,
    equal( Tail ).                 % check all elements in tail

drop( 0 , List , List ).           % if element is 0, return list
drop( N , [ _ | Tail ] , List ):-  % else, recurse
    Nm1 is N - 1,
    drop( Nm1 , Tail , List ).

range( X , X , [ X ] ).             % if list is empty, M == N , add it
range( X , X , List ):-             % else if M == N , add to list
    append( X , [] , List ).
range( M , N , [ M | Tail ] ):-     % else, recurse
    Mp1 is M + 1,
    range( Mp1 , N , Tail ).

element( 1 , [ Head | _ ] , Head ). % if N is 1, Head is element
element( N , [ _ | Tail ] , E ):-
    Nm1 is N - 1,                   % N is N minus 1
    element( Nm1 , Tail , E ).      % recurse

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

testEq1(_):-                        % return yes
    equal( [ 1 , 1 , 1 , 1 ] ).
testEq2(_):-                        % return no
    equal( [ 0 , 0 , 0 , 0 , 0 , 1 , 0 ] ).
testEq3(_):-                        % return yes
    equal( [ 3 , 3 ] ).
testEq4(_):-                        % return yes
    equal( [ 1 ] ).
testEq5(_):-                        % return yes
    equal( [] ).
testEq6(_):-                        % return no
    equal( [ 3 , 2 , 3 , 3 , 3 ] ).

testDr1(X):-                        % return [4,6]
    drop( 1 , [ 2 , 4 , 6 ] , X ).
testDr2(X):-                        % return [6]
    drop( 2 , [ 2 , 4 , 6 ] , X ).
testDr3(X):-                        % return []
    drop( 3 , [ 2 , 4 , 6 ] , X ).
testDr4(X):-                        % return [8,10]
    drop( 3 , [ 2 , 4 , 6 , 8 , 10 ] , X ).
testDr5(X):-                        % return [10,12,14]
    drop( 4 , [ 2 , 4 , 6 , 8 , 10 , 12 , 14 ] , X ).
testDr6(X):-                        % return []
    drop( 7 , [ 2 , 4 , 6 , 8 , 10 , 12 , 14 ] , X ).

testRa1(X):-                        % [1,2,3,4,5,6,7,8,9,10]
    range( 1 , 10 , X ).
testRa2(X):-                        % [5,6,7,8,9,10]
    range( 5 , 10 , X ).
testRa3(X):-                        % [2,3,4,5,6,7,8]
    range( 2 , 8 , X ).
testRa4(X):-                        % [3]
    range( 3 , 3 , X ).
testRa5(X):-                        % [8,9]
    range( 8 , 9 , X ).
testRa6(X):-                        % [4,5,6,7,8]
    range( 4 , 8 , X ).

testEl1( X ):-                      % X is 12
  element( 6 , [ 2 , 4 , 5 , 9 , 10 , 12 ] , X ).
testEl2( X ):-                      % X is 2
  element( 1 , [ 2 , 4 , 5 , 9 ] , X ).
testEl3( X ):-                      % X is 4
  element( 2 , [ 8 , 4 ] , X ).
testEl4( X ):-                      % X is 5
  element( 3 , [ 2 , 4 , 5 , 9 , 10 , 12 ] , X ).
testEl5( X ):-                      % X is 9
  element( 4 , [ 2 , 3 , 5 , 9 ] , X ).
testEl6( X ):-                      % X is 2
  element( 1 , [ 2 ] , X ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
