%%%%%%%%%%%%%%%
%  DATA INPUT 
%%%%%%%%%%%%%%%

%% decomposition(supere_element_id, decomposition_id, error) When decomposing 'supere_element_id' with 'decomposition_id' the 'error' is made
%% out(supere_element_id, decomposition_id, nodes_out) When decomposing 'supere_element_id' with 'decomposition_id' the 'nodes_out' must used
%% in(supere_element_id, decomposition_id, nodes_in) When decomposing 'supere_element_id' with 'decomposition_id' the 'nodes_in' must not be used

%%%%%%%%%%%%%
%% Example
%%%%%%%%%%%%%

decomposition(0, 0, 0).
out(0, 0, (6; 0; 1; 5)).
decomposition(0, 12, 1).
in(0, 12, (6)).
out(0, 12, (0; 1; 5)).


decomposition(1, 0, 4).
out(1, 2, (1; 2; 7; 6)).
decomposition(1, 2, 3).
in(1, 2, (2; 7; 6)).
out(1, 2, (1)).
decomposition(1, 7, 4).
in(1, 7, (2; 7)).
out(1, 7, (1; 6)).
decomposition(1, 8, 2).
in(1, 8, (6; 7)).
out(1, 8, (1; 2)).
decomposition(1, 11, 5).
in(1, 11, (2)).
out(1, 11, (1; 6; 7)).
decomposition(1, 12, 3).
in(1, 12, (7)).
out(1, 12, (1; 6; 2)).
decomposition(1, 13, 4).
in(1, 13, (6)).
out(1, 13, (1; 2; 7)).


decomposition(2, 0, 3).
out(2, 3, (2; 3; 8; 7)).
decomposition(2, 3, 2).
in(2, 3, (2; 7; 8)).
out(2, 3, (3)).
decomposition(2, 8, 2).
in(2, 8, (7; 8)).
out(2, 8, (2; 3)).
decomposition(2, 9, 4).
in(2, 9, (2; 7)).
out(2, 9, (3; 8)).
decomposition(2, 10, 4).
in(2, 10, (2)).
out(2, 10, (3; 7; 8)).
decomposition(2, 12, 3).
in(2, 12, (8)).
out(2, 12, (7; 2; 3)).
decomposition(2, 13, 2).
in(2, 13, (7)).
out(2, 13, (8; 3; 2)).


decomposition(3, 0, 0).
out(3, 0, (3; 4; 9; 8)).
decomposition(3, 13, 1).
in(3, 13, (8)).
out(3, 13, (3; 4; 9)).


decomposition(4, 7, 2).
in(4, 7, (6; 11)).
out(4, 7, (5; 10)).
decomposition(4, 11, 3).
in(4, 11, (6)).
out(4, 11, (5; 10; 11)).
decomposition(7, 12, 1).
in(7, 12, (6; 11)).
out(7, 12, (5; 10)).


decomposition(5, 1, 1).
in(5, 1, (6; 7; 12; 11)).
decomposition(5, 2, 0).
in(5, 2, (7; 12; 11)).
out(5, 2, (6)).
decomposition(5, 3, 2).
in(5, 3, (6; 12; 11)).
out(5, 3, (7)).
decomposition(5, 4, 2).
in(5, 4, (6; 7; 12)).
out(5, 4, (11)).
decomposition(5, 7, 3).
in(5, 7, (7; 12)).
out(5, 7, (6; 11)).
decomposition(5, 8, 3).
in(5, 8, (11; 12)).
out(5, 8, (6; 7)).
decomposition(5, 12, 3).
in(5, 12, (12)).
out(5, 12, (6; 11; 7)).


decomposition(6, 1, 0).
in(6, 1, (7; 8; 12; 13)).
decomposition(6, 2, 1).
in(6, 2, (7; 13; 12)).
out(6, 2, (8)).
decomposition(6, 3, 1).
in(5, 12, (12; 13; 7)).
out(5, 12, (8)).
decomposition(6, 5, 1).
in(6, 5, (12; 7; 8)).
out(6, 5, (13)).
decomposition(6, 8, 4).
in(6, 8, (12; 13)).
out(6, 8, (7; 8)).
decomposition(6, 9, 4).
in(6, 9, (12; 7)).
out(6, 9, (8; 13)).
decomposition(6, 13, 7).
in(6, 13, (12)).
out(6, 13, (13; 8; 7)).


decomposition(7, 3, 4).
in(7, 3, (8; 13; 14)).
out(7, 3, (9)).
decomposition(7, 9, 3).
in(7, 9, (13; 8)).
out(7, 9, (14; 9)).
decomposition(7, 10, 8).
in(7, 10, (8)).
out(7, 10, (9; 13; 14)).
decomposition(7, 12, 4).
in(7, 12, (14)).
out(7, 12, (13; 8; 9)).
decomposition(7, 13, 3).
in(7, 13, (14)).
out(7, 13, (8; 9; 13)).


decomposition(8, 7, 1).
in(8, 7, (11; 16)).
out(8, 7, (10; 15)).
decomposition(8, 11, 2).
in(8, 11, (11)).
out(8, 11, (1); 15; 16).
decomposition(8, 12, 3).
in(8, 12, (16)).
out(8, 12, (10; 11; 15)).


decomposition(9, 1, 0).
in(9, 1, (11; 12; 17; 16)).
decomposition(9, 2, 1).
in(9, 2, (16; 12; 17)).
out(9, 2, (11)).
decomposition(9, 4, 1).
in(9, 4, (11; 12; 17)).
out(9, 4, (16)).
decomposition(9, 5, 1).
in(9, 5, (11; 12; 16)).
out(9, 5, (17)).


decomposition(10, 1, 0).
in(10, 1, (12; 13;  17; 18)).
decomposition(10, 3, 1).
in(10, 3, (12; 18; 17)).
out(10, 3, (13)).
decomposition(10, 4, 1).
in(10, 4, (12; 13; 18)).
out(10, 4, (17)).
decomposition(10, 5, 1).
in(10, 5, (12; 13; 17)).
out(19, 5, (18)).
decomposition(10, 6, 4).
in(10, 6, (12; 13)).
out(10, 6, (17; 18)).
decomposition(10, 9, 4).
in(10, 9, (12; 17)).
out(10, 9, (13; 18)).
decomposition(10, 10, 7).
in(10, 10, (12)).
out(10, 10, (13; 17; 18)).


decomposition(11, 0, 3).
out(11, 0, (13; 14; 19; 18)).
decomposition(11, 5, 4).
in(11, 5, (13; 14; 18)).
out(11, 5, (19)).
decomposition(11, 6, 3).
in(11, 6, (13; 14)).
out(11, 6, (18; 19)).
decomposition(11, 9, 1).
in(11, 9, (13; 18)).
out(11, 9, (14; 19)).
decomposition(11, 10, 2).
in(11, 10, (13)).
out(11, 10, (14; 18; 19)).
decomposition(11, 11, 4).
in(11, 11, (14)).
out(11, 11, (13; 18; 19)).
decomposition(11, 13, 4).
in(11, 13, (18)).
out(11, 13, (13; 14; 19)).


decomposition(12, 0, 0).
out(12, 0, (15; 16; 21; 20)).
decomposition(12, 11, 1).
in(12, 11, (16)).
out(12, 11, (15; 20; 21)).


decomposition(13, 0, 2 ).
out(13, 0, (16; 17; 21; 22)).
decomposition(13, 6, 2).
in(13, 6, (16; 17)).
out(13, 6, (21; 22)).
decomposition(13, 10, 3).
in(13, 10, (16)).
out(13, 10, (17; 21; 22)).
decomposition(13, 11, 3).
in(13, 11, (17)).
out(13, 11, (16; 21; 22)).


decomposition(14, 0, 2).
out(14, 0, (17; 18; 22; 23)).
decomposition(14, 10, 3).
in(14, 10, (17)).
out(14, 10, (18; 22; 23)).
decomposition(14, 11, 3).
in(14, 11, (18)).
out(14, 11, (17; 22; 23)).


decomposition(15, 0, 1).
out(15, 0, (18; 19; 23; 24)).
decomposition(15, 10, 0).
in(15, 10, (18)).
out(15, 10, (19; 23; 24)).