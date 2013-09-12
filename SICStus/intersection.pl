%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 1                                                         %
% 7 September 2013                                                            %
%                                                                             %
% Produces a List 3 which is the intersection of items in List 1 and List 2   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

memberOf( Head , [ Head | _ ] ).       % if heads match, then done
memberOf( Head , [ _ | Tail ] ):-      % else recurse
    memberOf( Head , Tail ).           % continue checking elements

inter( [] , _ , [] ).                  % if 'List 1' is empty, done
inter( [ Head | Tail_1 ] , List_2 , [ Head | List_3 ] ):-
    memberOf( Head , List_2 ),         % if the head of 'List 1' is in 'List 2'
    !,                                 % cut the results of 'List 1'
    inter( Tail_1 , List_2 , List_3 ). % continue checking the remainder
inter( [ _ | Tail_1 ] , List_2 , List_3 ):-
    inter( Tail_1 , List_2 , List_3 ). % keep trying to find intersections

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
testI1(X):-                  % return [10,40]
    inter([10,20,30,40],[10,50,40,60],X).
testI2(X):-                  % return []
    inter([10,20,30,40],[50,60,70],X).
testI3(X):-                  % return []
    inter([],[10,20],X).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% test case %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%