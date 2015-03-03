% Prolog - 2/12/15
% keephalf
% keephalf([a,b,c,d],[a,c]).
% keephalf([a,b,c],[a,c]).
%
%
keephalf([],[]).
keephalf([X],[X]).
keephalf([I1,_|Tail], [I1 | Rest]) :- keephalf(Tail,Rest).

keephalf([],[],[])
keephalf([X],[],[X]).
keephalf([I1,I2|Tail], [I1 | Rest], [I2 | Other]) :- keephalf(Tail, Rest, Other).

qsort([Pivot|Tail], Sorted) :- partition(Tail, Pivot, US, UL), qsort( US, SS), qsort(UL, SL),

% Reverse talked about in book.
%

% Farmer, Wolf, Goat, Cabbage

