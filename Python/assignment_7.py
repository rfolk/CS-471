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
    for i in range(len(V)):
        L.append(S * V[i])
    return L

def scalar_product(S, V):
    """ Lets scale a vector the right way..."""
    return [S * v for v in V]

def vector_sum_bad(u, v):
    """ This is so pointless... -_- """
    S = []
    for i in range(len(u)):
        S.append(u[i] + v[i])
    return S

def vector_sum(U, V):
    """ Sum vectors u and v """
    return [u + v for u, v in zip(U, V)]

def matrix_sum_bad(M, N):
    """ Sum a matrix the idiotic way """
    S = []
    for i in range(len(M)):
        S.append(vector_sum(my_row(M, i), my_row(N, i)))
    return S

def matrix_sum(M, N):
    """ Sum a matrix """
    return [[m + n for m, n in zip(row_m, row_n)] for row_m, row_n in zip(M, N)]

def my_row(mat, n):
    """ return row n from given matrix """
    return mat[n]