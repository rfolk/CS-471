#lang racket

#|
Russell Folk
C S 471: Assignment 9
8 November 2013

Second assignment using Racket, used to be DrScheme. A few problems to get us
used to functional programming using the scheme language.
Makes use of conditionals and recursion.
|#

;	Calculate the area of a cylinder given a radius 'r' and a height 'h'.
;	Repeat from last time... o.O
( define ( cylinder_area r h )
         ( + ( double ( circle_area r ) )
             ( rectangle_area ( circle_circumference r ) h )
         )
)

;	Define function T(n) so that if n = 1 return 2 else if n > 1 return
;	T(n) = 2*T(n-1)+2
( define ( T n )
         ( cond
           [ ( equal? 1 n ) 2 ]
           [ else ( + 2 ( * 2 ( T ( - n 1 ) ) ) ) ]
         )
)

;	Calculate the number in the Fibonacci sequence at index 'n'
( define ( fibonacci n )
         ( cond
           [ ( < n 3 ) 1 ]
           [ else ( + ( fibonacci ( - n 1 ) ) ( fibonacci ( - n 2 ) ) ) ]
         )
)

;	Define the number e
; IEEE allows for ~16 digits of precision so I have stored e as precisely as possible, source NASA
( define e 2.718281828459045 )

;	Define e to the power of x
( define ( e_to_the_power_x n )
         ( cond
           [ ( < n 1 ) 1 ]
           [ ( equal? n 1 ) e ]
           [ else ( * e ( e_to_the_power_x ( - n 1 ) ) ) ]
         )
)

#| FROM LAST TIME |#
;	Double given value 'x' (assigned in homework).
( define ( double x )
         ( * 2 x )
)

;	Square given value 'x' (assigned in homework).
( define ( square x )
         ( * x x )
)

;	Calculate the circumference of a circle given a radius 'r'.
( define ( circle_circumference r )
         ( * ( double pi ) r )
)

;	Calculate the area of a circle given a radius 'r'.
( define ( circle_area r )
         ( * pi ( square r ) )
)

;	Calculate the area of a rectangle given a height 'h' and a width 'w'.
( define ( rectangle_area h w )
         ( * h w )
)
