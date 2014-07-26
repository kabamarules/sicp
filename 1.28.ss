(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (if (nontrivial-sqrt (expmod base (/ exp 2) m) m) 
             0
             (remainder (square (expmod base (/ exp 2) m))
                    m)))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (nontrivial-sqrt x n)
 (and (not (or (= x 1) (= x (- n 1))))
      (= (remainder (square x) n) 1)))

(define (miller-rabin-test n a)
  (define (try-it)
    (= (expmod a (- n 1) n) 1))
  (cond ((= a 1) #t)
        ((try-it) (miller-rabin-test n (- a 1)))
        (else #f)))

(define (miller-rabin-prime? n)
 (display n)
 (miller-rabin-test n (- n 2)))

(define (square a) 
  (* a a))
  
; BiwaScheme hasn't yet implemented remainder
(define (quotient a b) 
  (floor (/ a b)))
  
(define (remainder a b)
  (- a (* b (quotient a b))))
  
(miller-rabin-prime? 561)
; => #f

; (miller-rabin-prime? 1105)
; => #f

; (miller-rabin-prime? 1729)
; => #f

; (miller-rabin-prime? 2465)
; => #f

; (miller-rabin-prime? 2821)
; => #f

; (miller-rabin-prime? 6601)
; => #f