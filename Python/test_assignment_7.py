#!/usr/bin/env python

import unittest

from assignment_7 import scalar_product, scalar_product_bad

class Test_Assignment_7(unittest.TestCase):

    def setup(self):
        pass

    def test_scalar_product(self):
        V = [1, 3, 7, 8, 10]
        case_1 = [0.5, [0.5, 1.5, 3.5, 4, 5]]
        case_2 = [2, [2, 6, 14, 16, 20]]
        case_3 = [1.5, [1.5, 4.5, 10.5, 12, 15]]
        case_4 = [1, V]
        tests = [case_1, case_2, case_3, case_4]
        for t in tests:
            self.assertEqual(scalar_product_bad(t[0], V), t[1])
            self.assertEqual(scalar_product(t[0], V), t[1])


    def test_vector_sum(self):
        case_1 = [[0, 2, 4, 6], [1, 1, 1, 1], [1, 3, 5, 7]]
        case_2 = [[0, 2, 4, 6], [2, 2, 2, 2], [2, 4, 6, 8]]
        case_3 = [[1, 5], [0.5, 0.5], [1.5, 5.5]]
        case_4 = [[1, 5], [0.1, 0.1], [1.1, 5.1]]
        tests = [case_1, case_2, case_3, case_4]
        for t in tests:
            self.assertEqual(vector_sum(t[0], t[1]), t[2])

if __name__ == '__main__' :
    unittest.main()