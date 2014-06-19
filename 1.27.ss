(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (full-fermat-test n a)
  (define (try-it)
    (= (expmod a n n) a))
  (cond ((= a 1) #t)
        ((try-it) (full-fermat-test n (- a 1)))
        (else #f)))

(define (fermat-prime? n)
 (full-fermat-test n (- n 1)))

(define (square a) 
  (* a a))
  
; BiwaScheme hasn't yet implemented remainder
(define (quotient a b) 
  (floor (/ a b)))
  
(define (remainder a b)
  (- a (* b (quotient a b))))
  
(fermat-prime? 561)
; => #t
;(fermat-prime? 1105)
; => #t
;(fermat-prime? 1729)
; => #t
;(fermat-prime? 2465)
; => #t
;(fermat-prime? 2821)
; => #t
(fermat-prime? 6601)
; => #t