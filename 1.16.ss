(define (fast-expt b n)
    (fast-expt-iter b n 1))

(define (fast-expt-iter b counter product)
    (cond 
        ((= counter 0) product)
        ((even? counter) (fast-expt-iter (* b b) (/ counter 2) product))
        (else (* b (fast-expt-iter b (- counter 1) product)))))

(fast-expt 2 10)
; => 1024