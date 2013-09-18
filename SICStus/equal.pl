%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Russell Folk                                                                %
% CS471: Assignment 2                                                         %
% 12 September 2013                                                           %
%                                                                             %
% Check if every item inside the list is equal and return yes if true and no  %
% otherwise.                                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

equal( [] ).                    % if the list is empty, all elements equal
equal( [ _ | [] ] ).            % if there is one element, all elements equal
equal( [ Head | Tail ] ):-
    member( Head , Tail ),      % if head is in the tail, continue
    !,
    equal( Tail ).              % check all elements in tail

testEq1(_):-                    % return yes
    equal( [ 1 , 1 , 1 , 1 ] ).
testEq2(_):-                    % return no
    equal( [ 0 , 0 , 0 , 0 , 0 , 1 , 0 ] ).
testEq3(_):-                    % return yes
    equal( [ 3 , 3 ] ).
testEq4(_):-                    % return yes
    equal( [ 1 ] ).
testEq5(_):-                    % return yes
    equal( [] ).
testEq6(_):-                    % return no
    equal( [ 3 , 2 , 3 , 3 , 3 ] ).