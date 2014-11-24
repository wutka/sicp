(define (sum-of-squares x y) (+ (* x x) (* y y)))

(define (square-2-highest x y z)
   (if (> x y) (sum-of-squares x (if (> y z) y z))
       (sum-of-squares y (if (> x z) x z))))