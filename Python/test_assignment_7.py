#!/usr/bin/env python

import unittest


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
        for x in tests:
            self.assertEqual(scalar_product(tests[0], V), tests[1])
