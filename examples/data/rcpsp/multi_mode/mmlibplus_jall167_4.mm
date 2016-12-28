jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	13		2 3 4 5 7 8 9 10 12 13 15 17 20 
2	6	9		45 44 33 31 28 24 21 18 6 
3	6	15		50 49 48 47 45 43 42 33 32 31 30 25 24 21 19 
4	6	9		51 49 48 47 46 32 24 23 11 
5	6	7		33 31 28 23 21 19 11 
6	6	11		51 49 48 43 34 32 30 29 25 19 16 
7	6	12		49 48 47 45 44 43 34 33 28 26 25 19 
8	6	10		51 48 46 43 31 30 27 25 22 14 
9	6	10		48 47 44 42 39 38 31 30 24 22 
10	6	5		51 49 43 24 14 
11	6	10		50 45 44 43 42 40 38 37 27 25 
12	6	10		47 46 42 41 40 39 38 35 26 24 
13	6	8		49 46 42 40 38 30 26 25 
14	6	7		44 41 39 38 35 29 26 
15	6	7		47 44 43 42 38 37 25 
16	6	6		50 47 42 38 36 35 
17	6	6		50 45 44 40 38 35 
18	6	5		43 42 40 35 32 
19	6	4		46 41 40 39 
20	6	4		49 48 41 35 
21	6	3		38 36 29 
22	6	3		45 40 36 
23	6	3		40 39 35 
24	6	2		36 29 
25	6	2		41 39 
26	6	2		37 36 
27	6	2		39 35 
28	6	2		38 35 
29	6	1		37 
30	6	1		35 
31	6	1		37 
32	6	1		36 
33	6	1		36 
34	6	1		42 
35	6	1		52 
36	6	1		52 
37	6	1		52 
38	6	1		52 
39	6	1		52 
40	6	1		52 
41	6	1		52 
42	6	1		52 
43	6	1		52 
44	6	1		52 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	5	5	3	1	5	4	30	
	2	7	4	2	1	3	3	28	
	3	9	3	2	1	3	3	28	
	4	12	2	2	1	2	3	26	
	5	26	1	1	1	2	2	25	
	6	27	1	1	1	1	1	25	
3	1	3	3	4	4	1	20	10	
	2	6	3	3	4	1	19	9	
	3	9	3	3	3	1	18	8	
	4	12	3	3	3	1	18	6	
	5	24	3	3	2	1	16	4	
	6	29	3	3	2	1	16	2	
4	1	4	1	3	4	3	14	17	
	2	5	1	3	3	2	14	13	
	3	7	1	2	3	2	13	13	
	4	8	1	2	2	2	11	10	
	5	10	1	2	2	2	10	7	
	6	27	1	1	1	2	9	6	
5	1	2	5	4	3	4	17	27	
	2	5	4	4	2	3	16	22	
	3	6	4	4	2	3	14	18	
	4	8	4	4	2	3	11	14	
	5	12	4	3	1	3	5	11	
	6	30	4	3	1	3	4	7	
6	1	1	2	2	4	5	7	13	
	2	9	1	1	4	4	7	11	
	3	17	1	1	4	4	7	9	
	4	21	1	1	4	4	7	8	
	5	23	1	1	3	4	6	6	
	6	29	1	1	3	4	6	5	
7	1	1	4	5	4	3	21	15	
	2	11	3	4	3	2	18	12	
	3	20	3	4	3	2	14	10	
	4	21	2	3	2	2	11	10	
	5	22	2	3	2	2	8	8	
	6	23	2	2	2	2	7	5	
8	1	8	4	3	3	2	20	15	
	2	9	3	3	3	1	19	14	
	3	11	3	3	2	1	18	14	
	4	16	2	3	2	1	17	13	
	5	17	1	3	1	1	16	13	
	6	18	1	3	1	1	15	12	
9	1	1	5	4	2	5	29	5	
	2	2	4	4	1	4	25	4	
	3	5	3	4	1	4	21	3	
	4	12	3	3	1	4	13	3	
	5	13	3	3	1	3	12	2	
	6	26	2	2	1	3	4	2	
10	1	5	3	4	4	3	8	15	
	2	9	3	3	4	2	7	15	
	3	11	2	3	4	2	7	15	
	4	22	2	3	4	2	7	14	
	5	23	1	3	4	2	7	14	
	6	28	1	3	4	2	7	13	
11	1	6	5	2	2	4	26	28	
	2	7	5	1	2	3	22	25	
	3	12	5	1	2	3	20	21	
	4	19	5	1	2	3	17	19	
	5	25	5	1	2	1	13	17	
	6	28	5	1	2	1	12	16	
12	1	8	3	3	4	3	19	25	
	2	12	3	3	4	2	19	25	
	3	23	2	3	4	2	15	23	
	4	24	2	3	4	2	15	22	
	5	29	2	3	3	2	11	21	
	6	30	1	3	3	2	8	21	
13	1	13	4	3	1	1	23	21	
	2	16	4	2	1	1	20	20	
	3	20	4	2	1	1	20	19	
	4	24	4	1	1	1	18	19	
	5	29	4	1	1	1	16	18	
	6	30	4	1	1	1	12	18	
14	1	4	4	3	1	4	21	27	
	2	11	4	3	1	4	16	21	
	3	22	4	3	1	3	14	14	
	4	26	4	2	1	3	11	12	
	5	27	3	1	1	2	8	6	
	6	28	3	1	1	2	1	4	
15	1	4	4	4	4	4	26	28	
	2	6	4	3	3	4	26	25	
	3	17	3	2	3	4	25	20	
	4	18	3	2	3	3	24	17	
	5	19	2	2	3	3	24	11	
	6	21	2	1	3	3	23	10	
16	1	11	4	4	2	4	29	26	
	2	13	4	4	2	4	25	24	
	3	17	4	4	2	4	20	22	
	4	18	4	4	2	3	16	19	
	5	19	4	4	1	3	15	18	
	6	23	4	4	1	3	12	17	
17	1	1	5	3	4	3	25	28	
	2	4	4	3	3	3	25	24	
	3	5	3	3	3	3	25	19	
	4	8	2	2	2	3	25	16	
	5	20	1	1	2	3	25	16	
	6	25	1	1	1	3	25	13	
18	1	5	1	2	3	5	15	18	
	2	14	1	1	3	4	12	15	
	3	15	1	1	3	3	8	14	
	4	23	1	1	3	3	7	11	
	5	26	1	1	3	2	4	8	
	6	29	1	1	3	1	4	5	
19	1	7	4	3	4	2	26	26	
	2	8	3	3	3	1	24	23	
	3	12	3	2	3	1	22	22	
	4	13	3	2	2	1	19	19	
	5	21	3	1	2	1	17	18	
	6	23	3	1	2	1	16	15	
20	1	6	5	4	4	4	13	15	
	2	13	4	4	3	4	12	14	
	3	15	4	4	3	3	12	14	
	4	24	4	4	3	2	11	14	
	5	26	4	4	3	1	11	14	
	6	28	4	4	3	1	11	13	
21	1	4	3	4	2	2	23	25	
	2	5	2	4	2	2	20	24	
	3	9	2	4	2	2	19	24	
	4	18	2	4	1	2	16	22	
	5	20	2	3	1	2	12	20	
	6	25	2	3	1	2	11	19	
22	1	1	5	2	4	4	13	11	
	2	8	5	1	4	3	12	11	
	3	10	5	1	4	2	11	11	
	4	17	5	1	3	2	11	11	
	5	21	5	1	3	2	10	11	
	6	26	5	1	3	1	9	11	
23	1	5	4	5	4	1	30	18	
	2	6	4	4	4	1	27	15	
	3	8	3	4	4	1	22	15	
	4	10	3	3	4	1	19	13	
	5	27	3	3	4	1	15	11	
	6	30	2	2	4	1	14	11	
24	1	1	2	2	3	4	25	25	
	2	6	2	1	3	3	22	24	
	3	11	2	1	3	3	18	20	
	4	17	1	1	3	2	17	19	
	5	20	1	1	3	1	9	17	
	6	29	1	1	3	1	5	16	
25	1	5	5	4	4	3	11	8	
	2	11	4	4	4	3	10	7	
	3	19	3	4	3	3	8	6	
	4	22	3	4	3	3	7	6	
	5	23	2	4	2	3	6	6	
	6	30	1	4	2	3	6	5	
26	1	8	4	2	3	3	27	20	
	2	11	4	1	3	3	26	19	
	3	12	4	1	3	3	25	17	
	4	16	3	1	3	3	24	15	
	5	23	2	1	3	3	23	15	
	6	27	2	1	3	3	23	14	
27	1	5	4	3	3	3	16	7	
	2	6	4	2	2	3	15	6	
	3	9	4	2	2	3	15	5	
	4	10	4	2	2	2	15	3	
	5	11	4	1	2	2	15	3	
	6	29	4	1	2	2	15	2	
28	1	8	4	4	3	4	24	26	
	2	16	4	4	2	3	20	24	
	3	18	4	4	2	3	17	23	
	4	22	4	4	2	2	14	23	
	5	24	4	4	1	2	11	22	
	6	25	4	4	1	2	8	21	
29	1	14	4	3	5	5	20	16	
	2	15	3	3	4	4	19	12	
	3	19	3	3	4	3	19	11	
	4	20	2	3	3	2	19	9	
	5	22	2	3	3	1	18	7	
	6	29	1	3	2	1	18	3	
30	1	10	4	3	3	3	20	16	
	2	17	4	3	2	2	18	15	
	3	19	4	3	2	2	18	14	
	4	21	4	3	2	2	17	12	
	5	26	4	2	1	2	16	11	
	6	28	4	2	1	2	16	10	
31	1	3	3	4	3	1	15	13	
	2	4	3	3	2	1	14	12	
	3	13	3	3	2	1	14	11	
	4	22	3	3	1	1	13	11	
	5	24	2	3	1	1	13	11	
	6	25	2	3	1	1	13	10	
32	1	5	3	4	2	2	16	1	
	2	11	3	4	2	2	13	1	
	3	15	3	4	2	2	12	1	
	4	16	2	3	2	2	12	1	
	5	25	1	2	1	1	10	2	
	6	30	1	2	1	1	10	1	
33	1	3	3	2	4	2	8	17	
	2	7	3	2	3	1	7	17	
	3	16	2	2	3	1	7	17	
	4	21	2	2	3	1	6	16	
	5	23	1	2	3	1	6	16	
	6	27	1	2	3	1	5	16	
34	1	3	1	4	3	3	30	28	
	2	10	1	4	3	3	28	23	
	3	11	1	4	2	2	28	17	
	4	20	1	4	2	2	26	12	
	5	24	1	4	2	1	25	10	
	6	30	1	4	1	1	25	5	
35	1	3	2	3	4	4	26	9	
	2	7	1	3	4	4	24	8	
	3	8	1	3	4	3	17	8	
	4	9	1	2	4	2	13	7	
	5	13	1	2	4	2	11	7	
	6	18	1	2	4	1	4	6	
36	1	6	3	4	4	2	12	21	
	2	7	3	4	4	2	12	19	
	3	8	3	4	3	2	12	12	
	4	10	2	4	3	2	12	10	
	5	15	2	4	1	1	12	6	
	6	17	1	4	1	1	12	1	
37	1	3	2	4	3	5	27	18	
	2	11	2	4	3	4	27	17	
	3	16	2	4	3	4	27	14	
	4	17	2	3	3	4	27	13	
	5	25	2	3	3	4	27	11	
	6	29	2	3	3	4	27	10	
38	1	2	4	3	5	1	29	22	
	2	3	4	3	4	1	28	22	
	3	4	4	3	4	1	28	20	
	4	5	3	3	4	1	28	18	
	5	21	3	3	4	1	26	16	
	6	25	2	3	4	1	26	15	
39	1	3	4	2	5	4	25	20	
	2	9	3	2	5	3	23	18	
	3	11	3	2	5	3	23	17	
	4	12	3	2	5	2	22	16	
	5	13	3	2	5	2	22	15	
	6	17	3	2	5	1	21	12	
40	1	2	3	5	2	2	13	5	
	2	3	3	4	2	2	10	5	
	3	5	3	4	2	2	9	4	
	4	6	3	3	2	2	7	4	
	5	8	3	2	2	1	4	2	
	6	26	3	2	2	1	2	2	
41	1	4	3	1	4	4	18	23	
	2	6	2	1	3	4	18	23	
	3	12	2	1	3	4	14	21	
	4	19	2	1	3	4	14	20	
	5	20	1	1	2	3	10	19	
	6	30	1	1	1	3	10	17	
42	1	1	5	4	5	4	17	17	
	2	2	4	3	4	3	15	15	
	3	4	4	3	4	3	13	13	
	4	17	3	2	4	3	11	8	
	5	18	3	1	3	2	8	4	
	6	20	3	1	3	2	7	3	
43	1	9	3	3	4	5	19	23	
	2	14	2	3	3	4	18	20	
	3	19	2	3	2	3	17	19	
	4	21	2	2	2	2	17	17	
	5	25	2	1	2	2	16	14	
	6	29	2	1	1	1	15	13	
44	1	3	3	4	1	4	13	27	
	2	5	3	4	1	3	12	26	
	3	7	3	4	1	3	11	22	
	4	8	2	4	1	2	9	21	
	5	12	2	4	1	2	8	20	
	6	18	2	4	1	2	7	16	
45	1	11	1	4	2	5	26	21	
	2	15	1	4	1	3	23	19	
	3	21	1	4	1	3	23	16	
	4	22	1	3	1	2	20	15	
	5	25	1	3	1	1	16	13	
	6	28	1	3	1	1	15	12	
46	1	4	4	4	5	3	13	11	
	2	13	4	4	4	3	12	10	
	3	21	4	4	4	3	12	9	
	4	22	3	3	3	3	11	5	
	5	23	3	2	3	3	9	5	
	6	26	2	2	3	3	9	2	
47	1	1	4	4	4	4	14	25	
	2	6	4	4	4	4	14	22	
	3	10	4	4	4	4	14	20	
	4	18	4	4	4	4	14	12	
	5	19	4	4	4	3	13	8	
	6	20	4	4	4	3	13	5	
48	1	8	4	4	2	5	25	24	
	2	9	4	3	2	4	23	22	
	3	15	4	3	2	4	21	19	
	4	19	4	3	2	3	19	16	
	5	21	4	3	1	3	18	13	
	6	29	4	3	1	2	14	10	
49	1	5	3	2	1	5	29	17	
	2	10	3	2	1	4	27	15	
	3	13	3	2	1	4	26	15	
	4	17	3	2	1	3	24	15	
	5	25	3	2	1	2	23	13	
	6	28	3	2	1	2	22	13	
50	1	3	5	2	4	3	20	25	
	2	8	5	1	4	3	18	23	
	3	17	5	1	4	3	18	17	
	4	20	5	1	4	3	17	14	
	5	21	5	1	3	3	16	11	
	6	30	5	1	3	3	16	10	
51	1	1	4	1	4	5	21	10	
	2	14	4	1	3	4	21	10	
	3	15	3	1	3	4	19	8	
	4	17	3	1	3	3	19	7	
	5	21	3	1	2	3	16	6	
	6	26	2	1	2	3	15	5	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	28	27	23	28	797	722

************************************************************************