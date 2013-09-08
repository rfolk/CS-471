countZeros( [] , 0 ).
countZeros( [0|Tail] , R ):-
     countZeros( Tail , RT ),
     R is RT + 1.
countZeros( [Head|Tail] , R ):-
     countZeros( Tail , RT ),
     R is RT.