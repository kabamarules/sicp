; Second implementation
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; It's an iterative process
; (+ 4 5)
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)
; 9