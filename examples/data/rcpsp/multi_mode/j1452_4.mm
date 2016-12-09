************************************************************************
file with basedata            : md180_.bas
initial value random generator: 108320888
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  111
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       25        6       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          2           5   6
   3        3          3           7   9  11
   4        3          3           5  10  15
   5        3          2           7   9
   6        3          3           8   9  10
   7        3          1           8
   8        3          2          12  14
   9        3          1          13
  10        3          2          12  14
  11        3          3          13  14  15
  12        3          1          13
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       0    6    9   10
         2     9       0    6    8    8
         3    10       0    5    8    5
  3      1     2       2    0    2    3
         2     7       1    0    2    3
         3     8       1    0    1    3
  4      1     3       0    5    8    4
         2     4       0    4    8    3
         3     4       8    0    8    2
  5      1     1       8    0    8    9
         2     5       6    0    8    7
         3     6       0    5    7    3
  6      1     2       3    0   10    8
         2     4       0    4    8    8
         3    10       0    2    7    8
  7      1     7       7    0    5    6
         2     8       0    8    5    6
         3     9       0    4    5    6
  8      1     3       4    0    8    7
         2     4       4    0    7    5
         3     5       0    8    6    4
  9      1     5      10    0    2    6
         2     6       9    0    2    5
         3     9       8    0    1    4
 10      1     3       6    0    7    7
         2     5       0    6    4    4
         3     6       0    6    3    1
 11      1     1       5    0    9   10
         2     4       4    0    8   10
         3     6       2    0    8   10
 12      1     8       0   10    5    7
         2     8       4    0    8    8
         3    10       0   10    5    5
 13      1     1       6    0    9    7
         2     1       0    1    9    8
         3     8       7    0    8    6
 14      1     1       0    6    5    8
         2     9       3    0    5    8
         3    10       0    6    5    7
 15      1     3       8    0    7    6
         2     8       8    0    6    6
         3    10       0    7    4    5
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   23   21   92   92
************************************************************************