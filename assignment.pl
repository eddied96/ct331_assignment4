%Defenitions for isElementInList(El, List)
isElementInList(El, List):-
    member(El, List).

%Definitions for reverseList(List, ReversedList)
reverseList([], []).
reverseList([H|T],Z) :-
    reverseList(T,Z1),
    mergeLists(Z1, [H], Z).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList):-
    mergeLists(List, El, NewList).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists(List1, List2, Merged):-
   List = [List1, List2],
    flatten(List, Merged).