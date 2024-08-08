#lang racket
(require "basic-operations.rkt")

(provide my-mult)


(define my-mult (lambda (x y)
                 (define mult (lambda (n1 n2 sum)
                                (if (= n2 0)
                                    sum
                                    (mult n1 (- n2 1) (my-sum sum n1)))))
                  (mult x y 0)))