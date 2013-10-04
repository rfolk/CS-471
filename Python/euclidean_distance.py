#!/usr/bin/python

"""CS471: Assignment 4
Russell Folk
30 September 2013

Part 2: Calculate the Euclidean Distance of 2 lists of numbers.

"""

def euclideanDistance( X , Y ):
    """
    Returns the Euclidean Distance of 2 lists of numbers
    """
    # if X and Y are different sizes, raise an exception
    if len(X) != len(Y):
        raise Exception
    # start summing
    total = 0
    for Xn , Yn in zip( X , Y ):
        total += ( Xn - Yn ) ** 2
    return total ** 0.5

