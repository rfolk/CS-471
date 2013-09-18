%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 2                                                         %
% 17 September 2013                                                           %
%                                                                             %
% Given an integer N and a list L, set integer E to be the element at         %
% position N (starts at 1) in the list.                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

element( 1 , [ Head | _ ] , Head ). % if N is 1, Head is element
element( N , [ _ | Tail ] , E ):-
    Nm1 is N - 1,                   % N is N minus 1
    element( Nm1 , Tail , E ).      % recurse

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
