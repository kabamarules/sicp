(define (square-sum-larger x y z)
    (cond 
        ((and (<= x y) (<= x z)) (sum-of-squares y z))
        ((and (<= y x) (<= y z)) (sum-of-squares x z))
        ((and (<= z x) (<= z y)) (sum-of-squares x y))
    )
)

(define (<= x y)
  (or (< x y) (= x y)))
  
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (square x) (* x x))

; (square-sum-larger 3 4 3)
; => 25