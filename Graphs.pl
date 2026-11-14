edge('Makkah', 'Madinah').
edge('Makkah', 'Riyadh').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Taif', 'Tabuk').
edge('Taif', 'Dammam').
edge('Tabuk', 'Taif').
edge('Qatif', 'Madinah').
edge('Qatif', 'Dammam').
edge('Dammam', 'Qatif').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').

travel(Start, Destination, Path) :-
    path(Start, Destination, [Start], ReversedPath),
    reverse(ReversedPath, Path).

path(Destination, Destination, Visited, Visited).
path(Current, Destination, Visited, Path) :-
    edge(Current, Next),
    not(member(Next, Visited)),
    path(Next, Destination, [Next|Visited], Path).
