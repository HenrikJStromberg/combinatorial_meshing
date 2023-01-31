%%%%%%%%%%%%%%%
%  MODEL
%%%%%%%%%%%%%%%

#show element/1. 
#show surfaceTriangle/1. 

% only use elements that have scaled jacobian above Min from filter
element2faceF(E,F) :- element2face(E,F), info(E,T,SC), filter(T,Min), SC >= Min. 

elementIn(E) :- element2faceF(E,_).
faceIn(F) :- element2faceF(_,F). 
faceIn(F) :- boundary_in(F). 
faceIn(F) :- boundary_out(F). 
firstFace(F) :- F = #min { X : boundary_in(X) }.

{ element(E) } :- elementIn(E).
{ face(F) } :- faceIn(F). 

% the faces part of the boundary of the shape need to be in the model
:- boundary_in(F), not face(F).

% the faces that cannot be part of the boundary of the shape need to be excluded
:- boundary_out(F), face(F).

% if F is chosen face then exactly one element needs to be chosen of that contains that face
:- face(F), not 1 { element(E) : element2faceF(E,F) } 1. 

% if an element is chosen, then all faces need to be in the model
:- element(E), element2faceF(E,F), not face(F). 

% if a face contacts a void (= not face) then it is on the surface 
face2triangle(-F,-T) :- face2triangle(F,T).
surfaceTriangle(T) :- face(F), not face(-F), face2triangle(F,T).
strict_concave(-T1,T2) :- convex(T1,T2). 
strict_concave(T1,-T2) :- convex(T1,T2). 
strict_concave(-T1,-T2) :- convex(T1,T2), not convex(-T1,-T2). 

% concave combination of faces on the surface are forbidden
:- strict_concave(T1,T2), surfaceTriangle(T1), surfaceTriangle(T2).

% Infer edges 
edge(E) :- face(F), face2edge(F,E).  

% Infer inner triangles
triangle(|T|) :- face(F), face2triangle(F,T).

% each chosed triangles removes all edges it violates (intersection) 
:- triangleRemoveEdge(T,E), triangle(T), edge(E). 

% the first face of the boundary is the starting point of the connectivity analysis 
reachedFace(F) :- firstFace(F). 

% contact faces pass reachability forward
reachedFace(-F) :- reachedFace(F), face(-F). 

% if a face is reached, then also the chosen element that it connects to 
reachedElement(E) :- reachedFace(F), element2faceF(E,F), element(E). 

% if an element is reached, then also all faces it has contacts with are reached
reachedFace(F) :- reachedElement(E), element2faceF(E,F). 

% all chosen element need to be reached!
:- element(E), not reachedElement(E).
