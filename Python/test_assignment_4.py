#!/usr/bin/python

import unittest
from assignment_4 import euclideanDistance
from assignment_4 import series
from assignment_4 import tuple

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

    def test_series_sum(self):
        t3_1 = [ 1 , 0.5 ]
        t3_2 = [ 2 , 0.75 ]
        t3_3 = [ 3 , 0.875 ]
        t3_4 = [ 4 , 0.9375 ]
        t3_5 = [ 5 , 0.96875 ]
        t3_6 = [ 6 , 0.984375 ]
        t3_7 = [ 7 , 0.9921875 ]
        t3_8 = [ 8 , 0.99609375 ]
        test = [ t3_1 , t3_2 , t3_3 , t3_4 , t3_5 , t3_6 , t3_7 , t3_8 ]
        for x in test :
            self.assertEqual( series(x[0]) , x[1] )

    def test_tuple(self):
        t4_1 = [ 1 , ( 0.5 , [ 0.5 ] ) ]
        t4_2 = [ 2 , ( 0.75 , [ 0.5 , 0.25 ] ) ]
        t4_3 = [ 3 , ( 0.875 , [ 0.5 , 0.25 , 0.125 ] ) ]
        t4_4 = [ 4 , ( 0.9375 , [ 0.5 , 0.25 , 0.125 , 0.0625 ] ) ]
        t4_5 = [ 5 , ( 0.96875 , [ 0.5 , 0.25 , 0.125 , 0.0625 , 0.03125 ] ) ]
        t4_6 = [ 6 , ( 0.984375 , [ 0.5 , 0.25 , 0.125 , 0.0625 , 0.03125 , 0.015625 ] ) ]
        t4_7 = [ 7 , ( 0.9921875 , [ 0.5 , 0.25 , 0.125 , 0.0625 , 0.03125 , 0.015625 , 0.0078125 ] ) ]
        t4_8 = [ 8 , ( 0.99609375 , [ 0.5 , 0.25 , 0.125 , 0.0625 , 0.03125 , 0.015625 , 0.0078125 , 0.00390625 ] ) ]
        test = [ t4_1 , t4_2 , t4_3 , t4_4 , t4_5 , t4_6 , t4_7 , t4_8 ]
        for x in test :
            self.assertEqual( tuple(x[0]) , x[1] )

if __name__ == '__main__' :
    unittest.main()