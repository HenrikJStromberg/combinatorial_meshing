#show decompose/2.

% find min cost for each element 
decomp_cost(E,C) :- decomposition(E,_,C).
has_less(E,C2) :- decomp_cost(E,C1), decomp_cost(E,C2), C1 < C2. 
min_cost(E,C1) :- decomp_cost(E,C1), not has_less(E,C1).

element(E) :- decomposition(E,_,_).
node(N) :- out(_,_,N). 
node(N) :- in(_,_,N). 

1 { decompose(E, D) : decomposition(E,D,_) } 1 :- element(E).

is_in(N) :- decompose(E,D), in(E,D,N).

:- decompose(E,D), out(E,D,N), is_in(N).

#minimize{ C-X@1,D,E : decompose(E,D), decomposition(E,D,C), min_cost(E,X) }.
#minimize{ X@1,E: min_cost(E,X) }.
