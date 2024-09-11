#lang racket
(require "basic-operations.rkt")

(provide my-mult)

; if (my-mult 3 0.1) -> failed
; if (my-mult 0.1 3) -> 0.30000000000000004
(define my-mult (lambda (x y)
                 (define mult (lambda (n1 n2 sum)
                                (if (= n2 0)
                                    sum
                                    (mult n1 (- n2 1) (my-sum sum n1)))))
                  (mult x y 0)))