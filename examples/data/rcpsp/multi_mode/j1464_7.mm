************************************************************************
file with basedata            : md192_.bas
initial value random generator: 566774459
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  114
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       22        9       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   7   9
   3        3          2           6   7
   4        3          3           8  10  12
   5        3          1           8
   6        3          2           8  14
   7        3          2          10  14
   8        3          2          13  15
   9        3          2          10  11
  10        3          2          13  15
  11        3          2          12  15
  12        3          2          13  14
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5       8    7    6    5
         2     7       7    7    6    5
         3    10       7    5    5    4
  3      1     3       8    5    5    8
         2     3       8    7    4    7
         3     5       8    5    3    4
  4      1     1       6    8    9    7
         2     4       6    7    9    3
         3     6       5    7    9    3
  5      1     1       2    2    4   10
         2     4       2    2    3    7
         3     6       1    2    3    6
  6      1     6       5   10   10    7
         2     9       5    9   10    6
         3    10       2    9   10    6
  7      1     1       6    5    7    2
         2     5       6    5    4    2
         3     9       5    4    2    2
  8      1     1       8    6    7    6
         2     5       6    4    6    3
         3     6       6    4    3    2
  9      1     1       7    3    6    7
         2    10       7    3    6    5
         3    10       6    3    5    6
 10      1     5       8    8   10    9
         2     8       5    5    9    6
         3    10       4    4    9    3
 11      1     8       8    8    9    9
         2     9       6    5    8    9
         3    10       3    3    6    6
 12      1     2       6   10    3    2
         2     4       6    8    3    2
         3     9       4    8    2    1
 13      1     1       1    8    7    7
         2     7       1    6    1    4
         3     7       1    5    5    7
 14      1     2       7    7    7    8
         2     5       4    7    5    8
         3     6       3    7    1    7
 15      1     8       7    8    8    7
         2    10       7    4    8    5
         3    10       6    4    8    6
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   24   26   98   94
************************************************************************