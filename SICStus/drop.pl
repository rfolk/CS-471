%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 2                                                         %
% 12 September 2013                                                           %
%                                                                             %
% Given a specified number of elements N, drop that many from the front of a  %
% given list L1. Store the resulting list in L2.                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

drop( 0 , [] , [] ).
drop( 0 , List , Rem ):-
    copy ( List , Rem ).
drop( N , [ Head | Tail ] , Rem ):-
    N is NR - 1,
    drop( NR , Tail , Rem ).

copy( [] , [] ).
copy( X , X ).
copy( [ Head | Tail_1 ] , [ Head | Tail_2 ] ):-
    copy( Tail_1 , Tail_2 ).