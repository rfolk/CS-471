#lang racket

#|
Russell Folk
C S 471: Assignment 10
19 November 2013

Third assignment using Racket, used to be DrScheme.
Deals extensively with lists.
Makes use of conditionals and recursion.
|#

;;	Find the maximum value in a list
( define ( maximum list )
	( cond
		;;	No tail? Return head.
		[ ( empty? ( cdr list ) ) ( car list ) ]
		;;	Find the largest element
		[ else
			( cond
				[ ( > ( car list ) ( maximum ( cdr list ) ) ) ( car list ) ]
				[ else ( maximum ( cdr list ) ) ]
			)
		]
	)
)

;;	Count the number of zeros in a list
( define ( count_zeros list )
	( cond
		[ ( null? list ) 0 ]
		[ ( zero? ( car list ) ) ( + 1 ( count_zeros ( cdr list ) ) ) ]
		[ else ( + 0 ( count_zeros ( cdr list ) ) ) ]
	)
)

;;	Remove the zeros in a list
( define ( delete_zeros list )
	( cond
		[ ( null? list ) '() ]
		[ ( zero? ( car list ) ) ( delete_zeros ( cdr list ) ) ]
		[ else ( cons ( car list ) ( delete_zeros ( cdr list ) ) ) ]
	)
)

;;	Replace the zeros in a list with a '-'
( define ( change_the_zeros list )
	( cond
		[ ( null? list ) null ]
		[ ( zero? ( car list ) ) ( cons -1 ( change_the_zeros ( cdr list ) ) ) ]
		[ else ( cons ( car list ) ( change_the_zeros ( cdr list ) ) ) ]
	)
)
