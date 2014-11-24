(define (f-rec n)
  (if (< n 3) n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

(define (f-iter n)
  (define (iter n n3 n2 n1)
    (if (= n 0)
        (+ n1 (* 2 n2) (* 3 n3))
        (iter (- n 1) n2 n1 (+ n1 (* 2 n2) (* 3 n3)))))
  (if (< n 3) n
      (iter (- n 3) 0 1 2)))