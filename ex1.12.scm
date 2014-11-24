(define (pascal-elem row col)
  (if (or (= col 0) (= col row)) 1
      (+ (pascal-elem (- row 1) (- col 1))
         (pascal-elem (- row 1) col))))