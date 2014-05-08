; Iterative process

(define (f n)
    (f-iter 2 1 0 n))

(define (f-iter a b c count)
    (if (= count 0)
        c
        (f-iter (f-eval a b c) a b (- count 1) )))

(define (f-eval a b c)
    (+ a (* 2 b) (* 3 c)))

(f 4)
; => 11 