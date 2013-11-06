#lang racket

#|
Russell Folk
C S 471: Assignment 8
5 November 2013

First assignment using Racket, used to be DrScheme. Lets see what this is all
about.
|#

;	Calculate the circumference of a circle given a radius 'r'.
( define ( circle_circumference r )
         ( * 2 pi r )
)

;	Double given value 'x' (assigned in homework).
( define ( double x )
         ( * 2 x )
)

;	Calculate the circumference of a circle given a radius 'r' using the above
;	given function 'double'.
( define ( circle_circumference_take_2 r )
         ( * ( double pi ) r )
)

;	Calculate the area of a circle given a radius 'r'.
( define ( circle_area r )
         ( * pi r r )
)

;	Square given value 'x' (assigned in homework).
( define ( square x )
         ( * x x )
)

;	Calculate the area of a circle given a radius 'r' using the above given
;	function 'square'.
( define ( circle_area_take_2 r )
         ( * pi ( square r ) )
)

;	Calculate the area of a rectangle given a height 'h' and a width 'w'.
( define ( rectangle_area h w )
         ( * h w )
)

;	Calculate the area of a cylinder given a radius 'r' and a height 'h'.
( define ( cylinder_area r h )
         ( + ( double ( circle_area r ) )
             ( rectangle_area ( circle_circumference r ) h )
         )
)