%Out Nodes: [5, 6, 9, 10, 21, 22, 25, 26]
%In Nodes: [0, 1, 2, 3, 4, 7, 8, 11, 13, 14, 15, 16, 17, 18, 19, 20, 23, 24, 27, 29, 30, 31]

%[ 0,  4,  5,  1, 16, 20, 21, 17]
decomposition(0, 187, 21).
out(0, 187, (5; 21)).
in(0, 187, (0; 4; 1; 16; 20; 17)).

%[ 1,  5,  6,  2, 17, 21, 22, 18]
decomposition(1, 153, 74).
out(1, 153, (5; 6; 21; 22)).
in(1, 153, (1; 2; 17; 18)).

%[ 2,  6,  7,  3, 18, 22, 23, 19]
decomposition(2, 221, 23).
out(2, 221, (6; 22)).
in(2, 221, (2; 7; 3; 18; 23; 19)).

%[ 4,  8,  9,  5, 20, 24, 25, 21]
decomposition(3, 51, 81).
out(3, 51, (9; 5; 25; 21)).
in(3, 51, (4; 8; 20; 24)).

%[ 5,  9, 10,  6, 21, 25, 26, 22]
decomposition(4, 0, 0).
out(4, 0, (5; 9; 10; 6; 21; 25; 26; 22)).

%[ 6, 10, 11,  7, 22, 26, 27, 23]
decomposition(5, 204, 79).
out(5, 204, (6; 10; 22; 26)).
in(5, 204, (11; 7; 27; 23)).

%[ 8, 12, 13,  9, 24, 28, 29, 25]
decomposition(6, 119, 22).
out(6, 119, (9; 25)).
in(6, 119, (8; 12; 13; 24; 28; 29)).

%array([ 9, 13, 14, 10, 25, 29, 30, 26])
decomposition(7, 102, 77).
out(7, 102, (9; 10; 25; 26)).
in(7, 102, (13; 14; 29; 30)).

%array([ 9, 13, 14, 10, 25, 29, 30, 26])
decomposition(8, 238, 20).
out(8, 238, (10; 26)).
in(8, 238, (14; 15; 11; 30; 31; 27)).