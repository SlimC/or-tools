************************************************************************
file with basedata            : cm540_.bas
initial value random generator: 325723637
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  147
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       19       10       19
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        5          3           5   6   8
   3        5          3           9  13  14
   4        5          3           9  12  16
   5        5          2           7  10
   6        5          3          11  13  14
   7        5          2          11  17
   8        5          3           9  15  16
   9        5          1          17
  10        5          2          12  13
  11        5          1          12
  12        5          1          15
  13        5          1          16
  14        5          2          15  17
  15        5          1          18
  16        5          1          18
  17        5          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     5      10    2    5    6
         2     6      10    2    4    4
         3     7      10    1    4    3
         4     9      10    1    4    2
         5    10      10    1    3    1
  3      1     3       6    5    9    9
         2     3       7    4    9    8
         3     4       6    4    8    6
         4     5       5    4    8    5
         5     6       4    2    7    4
  4      1     1       3    4    8    4
         2     3       3    3    6    3
         3     7       2    3    5    3
         4     8       1    2    5    2
         5    10       1    2    3    2
  5      1     6       9    7    5    6
         2     7       8    5    5    5
         3     7       9    7    5    4
         4     8       8    3    5    3
         5     9       8    1    5    2
  6      1     1       8    4    6    1
         2     6       7    4    5    1
         3     7       6    4    5    1
         4     7       7    4    4    1
         5    10       3    3    3    1
  7      1     3       9    3    5    8
         2     6       7    3    5    7
         3     6       8    3    4    7
         4     7       7    3    4    7
         5     8       4    1    4    4
  8      1     2       6    8    7    7
         2     6       6    8    6    6
         3     6       5    8    5    7
         4     7       5    8    4    6
         5     8       4    7    3    4
  9      1     1       7    8    6    7
         2     3       6    8    5    6
         3     4       6    7    4    6
         4     8       6    7    4    5
         5     9       5    7    3    5
 10      1     1       6    6    7    7
         2     5       6    6    5    6
         3     5       4    6    6    6
         4     7       3    5    4    6
         5    10       2    3    2    5
 11      1     2       8   10    6    7
         2     2       7   10    7    6
         3     3       6    9    6    4
         4     5       4    8    3    4
         5    10       3    8    3    2
 12      1     1       5    9    7    7
         2     6       4    8    6    6
         3     6       5    6    5    6
         4     6       4    7    4    7
         5    10       4    6    3    4
 13      1     3      10   10    8    7
         2     4       9    9    6    6
         3     8       9    7    4    4
         4     8       9    6    3    6
         5    10       8    5    2    3
 14      1     1       5    6    9    2
         2     3       4    5    9    2
         3     4       4    5    8    1
         4     7       3    4    8    1
         5     9       2    3    8    1
 15      1     2       6   10    8    6
         2     4       6    8    7    4
         3     5       6    4    6    3
         4     5       5    5    6    3
         5     8       4    2    5    2
 16      1     1       9    9    9    5
         2     3       7    8    9    4
         3     6       3    6    9    3
         4    10       3    3    7    3
         5    10       2    4    8    3
 17      1     1      10    7    8    8
         2     1      10    6   10    8
         3     1       9    7   10    8
         4     5       8    6    4    6
         5    10       6    6    4    6
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   28   27   78   61
************************************************************************