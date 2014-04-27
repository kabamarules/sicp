(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
 (< (/ (abs (- (improve guess x) guess)) guess) 0.001))
; (< (/ (abs (- (square guess) x)) guess)  (* guess 0.001) )) 
 
(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))
  
(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0009)
; => 0.03002766742182557
; The result with the previous good-enough? function was
; => 0.04030062264654547