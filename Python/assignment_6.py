#!/usr/bin/python

"""

CS471: Assignment 6
Russell Folk
21 October 2013

Part 1: Find the minimum value in the list
Part 2: Selection Sort
Part 3: Partioin list into n sublists
Part 4: Print row i of a Matrix
Part 5: Print column j of a Matrix
Part 6: Calculate the dot product

"""

def min_index(L):
    """ return the index of the minimum value in a list """
    return L.index(min(L))

def selection_sort(L):
    """ sort a list using selection sort algorithm """
    for i in range(len(L)):
        # find the min index of the remaining list
        mi = min_index(L[i:])
        # check if the min index is in the right place or swap
        if mi+i != i: # need to adjust min index for position in list
            L[i], L[mi+i] = L[mi+i], L[i]
    return L

def partitions(L, n):
    """ partition a list into slices of n size """
    new_list = []
    for x in range(0, len(L), n): # step by given parameter
        new_list.append(L[x:x+n]) # append slice
    return new_list

def my_row(mat, n):
    """ return row n from given matrix """
    return mat[n]

def my_col(mat, n):
    """ return col n from given matrix """
    return [row[n] for row in mat] # for each row, extract col n

def dot_product(v1, v2):
    """ return the dot product of two vectors """
    return sum(x1 * x2 for x1, x2 in zip(v1, v2))
