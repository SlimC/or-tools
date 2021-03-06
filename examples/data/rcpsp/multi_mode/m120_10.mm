************************************************************************
file with basedata            : cm120_.bas
initial value random generator: 940150085
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  18
horizon                       :  101
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     16      0       37       14       37
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        1          3           5   6  10
   3        1          3           7   8  17
   4        1          3          11  12  14
   5        1          1           9
   6        1          3           7   9  12
   7        1          1          13
   8        1          2          14  16
   9        1          2          15  17
  10        1          2          11  14
  11        1          3          13  16  17
  12        1          2          13  16
  13        1          1          15
  14        1          1          15
  15        1          1          18
  16        1          1          18
  17        1          1          18
  18        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3       0    6    0    6
  3      1     6       0    5    5    0
  4      1     4       0    5    0    8
  5      1     7       0    8    5    0
  6      1     8       4    0    0    9
  7      1     5       0    2    0    9
  8      1     3       0    7    0    1
  9      1    10       6    0    3    0
 10      1     7       0    8    3    0
 11      1     1       0    6    5    0
 12      1    10       0   10    0    9
 13      1    10       6    0    4    0
 14      1     8       5    0    0    5
 15      1     6       5    0    9    0
 16      1     6       3    0    0    6
 17      1     7       2    0    4    0
 18      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   11   26   38   53
************************************************************************
