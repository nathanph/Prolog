% feb24.pl 
% 3-3-2015
%
seperate([X]) :- seperate([X],[],[]).
seperate([], [], []).
seperate([X],[X],[]).
seperate([First,Second|Tail],[First | FirstEnd],[Second | SecondEnd]) :- seperate(Tail, FirstEnd, SecondEnd).
