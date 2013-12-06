#lang racket

#|
Russell Folk
C S 471: Assignment 11
20 November 2013

Fourth assignment using Racket, used to be DrScheme.
Deals extensively with lists.
Makes use of conditionals and recursion.
|#

;;	Remove the last number in a list
( define ( myremove lis )
	( cond
		;;	No tail? Do not return head.
		[ ( empty? ( cdr lis ) ) null ]
		;;	Return the fixed list
		[ else ( cons ( car lis ) ( myremove ( cdr lis ) ) ) ]
	)
)

;; Append an atom a to a list lis
( define ( myappend lis a )
	( cond
		;;	if lis is a list, append the atom a recursively
		[ ( list? lis )
			( cond
				[ ( null? ( cdr lis ) ) ( cons ( car lis ) ( list a ) ) ]
				[ else ( cons ( car lis ) ( myappend ( cdr lis ) a ) ) ]
			)
		]
		;;	else create an appended list
		[ else ( cons ( list lis ) ( list a ) ) ]
	)
)

;;	Reverse a given list
( define ( myreverse lis )
	( cond
		[ ( empty? ( cdr lis ) ) lis ]
		[ else ( myappend ( myreverse ( cdr lis ) ) ( car lis ) ) ]
	)
)

;;	Check if a is atom a member of list lis
( define ( mymember a lis )
	( cond
		[ ( null? lis ) #f ]
		[ ( eqv? ( car lis ) a ) #t ]
		[ else ( mymember a ( cdr lis ) ) ]
	)
)

;;	Check is list lis1 is a subset of list lis2
( define ( subset lis1 lis2 )
	( cond
		[ ( null? lis1 ) #t ]
		[ ( eqv? ( mymember ( car lis1 ) lis2 ) #t ) ( subset ( cdr lis1 ) lis2 ) ]
		[ else #f ]
	)
)

;;	Combine list lis1 and list lis2
( define ( union lis1 lis2 )
	( cond
		[ ( null? lis1 ) lis2 ]
		[ ( eqv? ( subset lis1 lis2 ) #t ) lis2 ]
		[ ( eqv? ( mymember (car lis1) lis2) #t) (union (cdr lis1) lis2)]
		[else (cons (car lis1) (union (cdr lis1) lis2))]
	)
)
