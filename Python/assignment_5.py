#!/usr/bin/python

"""CS471: Assignment 5
Russell Folk
15 October 2013

Part 1: Calculate log2(X)
Part 2: Calculate various functions of n
Part 3: Graph the other parts

"""

# Because I can and because it's awesome.
# import antigravity

# Part 1
from math import log2
# Part 2
from math import factorial

def f1(n):
    """
    Returns a string with the answer of log[base 2](n)
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = round(log2(n), 1)
    return "log(" + str(n) + ")=" + str(answer)

def f2(n):
    """
    Returns a string with the answer squared of log[base 2](n)
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = round(log2(n)*log2(n), 1)
    return "log^2(" + str(n) + ")=" + str(answer)

def f3(n):
    """
    Returns a string with the answer of n*log[base 2](n)
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = round(n*log2(n), 1)
    return str(n) + "log(" + str(n) + ")=" + str(answer)

def f4(n):
    """
    Returns a string with the answer of n^2
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = n ** 2
    return str(n) + "^2" + "=" + str(answer)

def f5(n):
    """
    Returns a string with the answer of 2^n
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = 2 ** n
    return "2^" + str(n) + "=" + str(answer)

def f6(n):
    """
    Returns a string with the answer of n!
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = factorial(n)
    return str(n) + "!=" + str(answer)

def f7(n):
    """
    Returns a string with the answer of n^n
    """
    if isinstance(n, int) == False:
        return "Not an integer!"
    answer = n ** n
    return str(n) + "^" + str(n) + "=" + str(answer)

def printGraph(f, g, n):
    """
    Prints a graph of two functions from 1 to n
    """
    for x in range(1, n + 1):
        print(f(x).ljust(20) + " " + g(x).ljust(20))

#printGraph(f1,f3,9)
#print()
#printGraph(f2,f1,9)
#print()
#printGraph(f5,f6,6)
#print()
#printGraph(f6,f7,7)
