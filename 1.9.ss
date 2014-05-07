; first implementation
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; second implementation
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))