; Pascal's triangle

(define (pascal row col)
  (cond ((and (= col 0) (= row 0)) 1)
        ((< col 0) 0)
        ((> col row) 0)
        (else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))
        
(pascal 4 2)
; => 6