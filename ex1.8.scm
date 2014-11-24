(define (cubert-iter guess old-guess x)
  (if (good-enough? guess old-guess)
      guess
      (cubert-iter (improve guess x) guess x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* guess 2)) 3))
   
(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess old-guess)
  (< (/ (abs (- guess old-guess)) old-guess) 0.001))

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cubert x) (cubert-iter 1.0 x x))