%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 1                                                         %
% 7 September 2013                                                            %
%                                                                             %
% Produces a List 3 which is the union of items in List 1 and List 2          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

memberOf( Head , [ Head | _ ] ).    % if heads match, then done
memberOf( Head , [ _ | Tail ] ):-   % else recurse
    memberOf( Head , Tail ).        % continue checking elements

union( [] , X , X ).
union( [ Head | Tail_1 ] , List_2 , List_3 ):-
    memberOf( Head , List_2 ),
    !,
    union( Tail_1 , List_2 , List_3 ).
union( [ Head | Tail_1 ] , List_2 , [ Head | Tail_3 ] ):-
    union( Tail_1 , List_2 , Tail_3 ).

testU1(X):-                  % Result: [10,20,30,40,50,60]
    union([10,20,30,40],[10,50,40,60],X).
testU2(X):-                  % Result: [10,20,30,40]
    union([10,20,30,40],[],X).
testU3(X):-                  % Result: [10,20,30]
    union([],[10,20,30],X).