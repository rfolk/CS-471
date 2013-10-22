#!/usr/bin/python

import unittest
from assignment_6 import min_index

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

if __name__ == '__main__' :
    unittest.main()