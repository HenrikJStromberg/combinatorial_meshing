%%%%%%%%%%%%%%%
%  DATA INPUT 
%%%%%%%%%%%%%%%

%% element2face(Element,Face). 
%% strict_concave(Face1,Face2).  %% Face1<Face2
%% boundary_in(Face).  %% Face needs to be in the model
%% boundary_out(Face).  %% Face cannot be in the model

%%%%%%%%%%%%%
%% Example
%%%%%%%%%%%%%

filter(tet,45). 
filter(prsm,80). 
filter(pyr,50). 
filter(hex,20). 

element2face(1,(-1;-3;4;11)).
element2face(2,(-11;-6;7;9)).
element2face(3,(-2;-4;5;12)).
element2face(4,(-12;-7;8;10)).
element2face(5,(-7;-12;13)).
element2face(6,(-13;8;10)).

info(1,tet,57). 
info(2,tet,88). 
info(3,hex,20). 
info(4,pyr,20). 
info(5,hex,47). 
info(6,prsm,98). 

boundary_in(-1;-2;-3;-6;5;9).
boundary_out(8;10).
%boundary_in(-1;-3;-6;9).

face2triangle(-1,-1).
face2triangle(-2,-2).
face2triangle(-3,-3).
face2triangle(-4,-4).
face2triangle(-6,-6).
face2triangle(-7,-7).
face2triangle(10,10).
face2triangle(11,11).
face2triangle(12,12).
face2triangle(13,13).
face2triangle(4,4).
face2triangle(5,5).
face2triangle(7,7).
face2triangle(8,8).
face2triangle(9,9).
face2triangle(7,77).   % example for quadriliteral to 2 triangles     
face2triangle(7,78).   %
face2triangle(12,221). % example for quadriliteral to 2 triangles  
face2triangle(12,222). % example for quadriliteral to 2 triangles  

convex(77,221). %face 7 and face 12 are not compatible  (the resulting shape is concave)
%strict_concave(-4,-11). 

face2edge(4,(e1;e2;e3)).
face2edge(5,(e4;e5;e6)).

triangleRemoveEdge(4,(e5;e6)).
triangleRemoveEdge(5,e1).


%%%%%%%%%%%%%
%%% TODO 
%%%%%%%%%%%%%

%% 3. 
%% For valence: 
%% element2edge(Element,Node1,Node2). %%Node1<Node2



