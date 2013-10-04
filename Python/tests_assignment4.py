#!/usr/bin/python

import unittest
from euclidean_distance import euclideanDistance

class TestAssignment4(unittest.TestCase):

    def setup(self):
        pass

    def test_euclidean_distance(self):
        t2_1 = [3.0 , [[0] , [3]] ]
        t2_2 = [4.242640687119285 , [[0,0] , [3,3]]]
        t2_3 = [2.0 , [[1,3] , [1,5]]]
        t2_4 = [5.0 , [[3,4] , [0,0]]]
        t2_5 = [7.0710678118654755 , [[3,4,5] , [6,8,10]]]
        t2_6 = [8.660254037844387 , [[1,3,5] , [6,8,10]]]
        t2_7 = [20.12461179749811 , [[1,2,3,4,5] , [10,11,12,13,14]]]
        t2_8 = [2.0 , [[1,3,5,7] , [2,4,6,8]]]
        test = [t2_1 , t2_2 , t2_3 , t2_4 , t2_5 , t2_6 , t2_7 , t2_8]
        for x in test :
            self.assertEqual( euclideanDistance(x[1][0] , x[1][1] ) , x[0] )

if __name__ == '__main__' :
    unittest.main()