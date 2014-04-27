(define (cube-root-iter guess x)
  (if (good-enough? guess x)
          guess
          (cube-root-iter (improve guess x) x)))

(define (good-enough? guess x)
 (< (/ (abs (- (improve guess x) guess)) guess) 0.0001))
 
(define (improve guess x)
  (third-sum (/ x (square guess)) (* 2.0 guess)))
  
(define (square x) (* x x))

(define (third-sum x y)
  (/ (+ x y) 3.0))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(cube-root 27)
; => 3.0000005410641766