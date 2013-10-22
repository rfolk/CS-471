#!/usr/bin/python

import unittest
from assignment_6 import min_index
from assignment_6 import selection_sort
from assignment_6 import partitions

class Test_Assignment_6(unittest.TestCase):

    def setup(self):
        pass

    def test_min_index(self):
        case_1 = [2, [3, 5, 1, 8, 9, 2]]
        case_2 = [6, [3, 5, 1, 8, 4, 2, 0]]
        case_3 = [0, [0, 3, 5, 1, 8, 4, 2, 9, 6]]
        case_4 = [5, [3, 5, 2, 8, 4, 1, 9, 6]]
        tests = [case_1, case_2, case_3, case_4]
        for x in tests:
            self.assertEqual(x[0], min_index(x[1]))

    def test_selection_sort(self):
        case_1 = [4, 3, 1, 0, 9, 8, 100, 2, 10]
        sort_1 = [0, 1, 2, 3, 4, 8, 9, 10, 100]
        case_2 = [100, 50, 20, 34, 2, 9, 6, 10]
        sort_2 = [2, 6, 9, 10, 20, 34, 50, 100]
        case_3 = [10, 5, 8, 2, 19, 0, 20]
        sort_3 = [0, 2, 5, 8, 10, 19, 20]
        case_4 = [10, 5]
        sort_4 = [5, 10]
        cases = [case_1, case_2, case_3, case_4]
        sorts = [sort_1, sort_2, sort_3, sort_4]
        for cx, sx in zip(cases, sorts):
            self.assertEqual(selection_sort(cx), sx)

    def test_partitions(self):
        case_1 = [[2, 4, 6, 8, 10, 12, 14, 16], 2]
        rslt_1 = [[2, 4], [6, 8], [10, 12], [14, 16]]
        case_2 = [[2, 4, 6, 8, 10, 12, 14, 16], 3]
        rslt_2 = [[2, 4, 6], [8, 10, 12], [14, 16]]
        case_3 = [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 5]
        rslt_3 = [[0, 1, 2, 3, 4], [5, 6, 7, 8, 9]]
        case_4 = [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 3]
        rslt_4 = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [9]]
        cases = [case_1, case_2, case_3, case_4]
        rslts = [rslt_1, rslt_2, rslt_3, rslt_4]
        for cx, rx in zip(cases, rslts):
            self.assertEqual(partitions(cx[0], cx[1]), rx)

if __name__ == '__main__' :
    unittest.main()