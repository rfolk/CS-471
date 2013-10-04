#!/usr/bin/python

"""CS471: Assignment 4
Russell Folk
4 October 2013

Part 2: Calculate the Euclidean Distance of 2 lists of numbers.
Part 3: Calculate the sum of the series 1/2^i
Part 4: Calculate the sum and return the list of values for the above series

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

def series(X):
    """
    Calculate the sum of 1/2^i where i = 1,n
    """
    if X < 1:
        raise Exception
    total , denom = 0 , 1
    for x in range ( 1 , X + 1 ):
        denom *= 2
        total += 1 / denom
    return total

def tuple(X):
    """
    Calculate the sum of 1/2^i where i = 1,n
    Return the sum and the list of values
    """
    if X < 1:
        raise Exception
    total , denom , result = 0 , 1 , []
    for x in range ( 1 , X + 1 ):
        denom *= 2
        result.append(1 / denom)
        total += result[-1]
    return (total , result)
