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

print ("Test Case 1:") # Should be: 3.0
print (euclideanDistance( [0] , [3] ))

print ("Test Case 2:") # 4.242640687119285
print (euclideanDistance( [0,0] , [3,3] ))

print ("Test Case 3:") # Should be: 2.0
print (euclideanDistance( [1,3] , [1,5] ))

print ("Test Case 4:") # 5.0
print (euclideanDistance( [3,4] , [0,0] ))

print ("Test Case 5:") # Should be: 7.0710678118654755
print (euclideanDistance( [3,4,5] , [6,8,10] ))

print ("Test Case 6:") # 8.660254037844387
print (euclideanDistance( [1,3,5] , [6,8,10] ))

print ("Test Case 7:") # 20.12461179749811
print (euclideanDistance( [1,2,3,4,5] , [10,11,12,13,14] ))

print ("Test Case 8:") # 2.0
print (euclideanDistance( [1,3,5,7] , [2,4,6,8] ))
