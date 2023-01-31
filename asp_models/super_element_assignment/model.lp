#show decompose/2.
element(E) :- decomposition(E,_,_).
node(N) :- out(_,_,N). 
node(N) :- in(_,_,N). 

1 { decompose(E, D) : decomposition(E,D,_) } 1 :- element(E).
{ is_in(N) } :- node(N). 

:- decompose(E,D), out(E,D,N), is_in(N).
:- decompose(E,D), in(E,D,N), not is_in(N).


#minimize{ C@1,D,E : decompose(E,D), decomposition(E,D,C) }.
