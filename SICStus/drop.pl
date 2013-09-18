%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 2                                                         %
% 12 September 2013                                                           %
%                                                                             %
% Given a specified number of elements N, drop that many from the front of a  %
% given list L1. Store the resulting list in L2.                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drop( 0 , List , List ).              % if element is 0, return list
drop( N , [ _ | Tail ] , List ):-  % else, recurse
    Nm1 is N - 1,
    drop( Nm1 , Tail , List ).

testDr1(X):-                          % return [4,6]
    drop( 1 , [ 2 , 4 , 6 ] , X ).
testDr2(X):-                          % return [6]
    drop( 2 , [ 2 , 4 , 6 ] , X ).
testDr3(X):-                          % return []
    drop( 3 , [ 2 , 4 , 6 ] , X ).
testDr4(X):-                          % return [8,10]
    drop( 3 , [ 2 , 4 , 6 , 8 , 10 ] , X ).
testDr5(X):-                          % return [10,12,14]
    drop( 4 , [ 2 , 4 , 6 , 8 , 10 , 12 , 14 ] , X ).
testDr6(X):-                          % return []
    drop( 7 , [ 2 , 4 , 6 , 8 , 10 , 12 , 14 ] , X ).
