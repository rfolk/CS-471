#!/usr/bin/python

"""CS471: Assignment 5
Russell Folk
15 October 2013

Part 4: Print graph of functions

"""

from assignment_5 import f1, f2, f3, f4, f5, f6, f7

def printGraph(f, n):
    """
    Prints a graph of functions from 1 to n
    """
    for x in range(1, n + 1):
        for fx in f:
            print(fx(x).ljust(20), end='')
        print()

printGraph([f1,f2,f3], 10)
print()
printGraph([f2,f3,f4,f5,f6,f7],5)
print()
printGraph([f5,f6,f7],10)
print()
printGraph([f2,f4,f6],5)
print()
printGraph([f7],40)
