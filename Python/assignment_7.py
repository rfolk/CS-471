#!/usr/bin/env python

"""

CS471: Assignment 7
Russell Folk
29 October 2013

Part 1: Multiply a vector by a scalar
Part 2: Part 1, list comprehension
Part 3: Add two vectors
Part 4: Part 3, list comprehension
Part 5: Matrix sum
Part 6: Part 5, list comprehension

"""

def scalar_product_bad(S, V):
    """ Make a dummy list to do what will be done better """
    L = []
    for i in range (len(V)):
        L.append(S * V[i])
    return L

def scalar_product(S, V):
    """ Lets scale a vector the right way..."""
    return [S * v for v in V]