#!/usr/bin/python

import unittest
from assignment_6 import min_index, selection_sort, partitions
from assignment_6 import my_row, my_col

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

    def test_my_row(self):
        mat = [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9],
                [0, 1, 2]
              ]
        test_1 = [0, [1, 2, 3]]
        test_2 = [1, [4, 5, 6]]
        test_3 = [2, [7, 8, 9]]
        test_4 = [3, [0, 1, 2]]
        tests = [test_1, test_2, test_3, test_4]
        for x in tests:
            self.assertEqual(my_row(mat, x[0]), x[1])

    def test_my_col(self):
        mat = [
                [1, 2, 3, 5],
                [4, 5, 6, 7],
                [7, 8, 9, 9],
                [0, 1, 2, 3]
              ]
        test_1 = [0, [1, 4, 7, 0]]
        test_2 = [1, [2, 5, 8, 1]]
        test_3 = [2, [3, 6, 9, 2]]
        test_4 = [3, [5, 7, 9, 3]]
        tests = [test_1, test_2, test_3, test_4]
        for x in tests:
            self.assertEqual(my_col(mat, x[0]), x[1])

    def test_dot_product(self):
        test_1 = [[1, 4, 7], [2, 5, 8], 78]
        test_2 = [[3, 6, 9], [2, 4, 8], 102]
        test_3 = [[2, 6], [8, 9], 70]
        test_4 = [[2], [8], 16]
        tests = [test_1, test_2, test_3, test_4]
        for x in tests:
            self.assertEqual(dot_product(x[0], x[1]), x[2])

if __name__ == '__main__' :
    unittest.main()