#lang racket
(require "mult.rkt")

(provide my-power-to)

#|
(define my-power-to (lambda (x n)
                      (define power-to (lambda (a b c)
                                         (if (= b 1)
                                             c
                                             (power-to a (- b 1)(my-mult a c)))))
                      (power-to x n x)))
|#

; result -> x^n
(define my-power-to (lambda (x n)
                      (define power-to (lambda (a b c)
                                         (if (= b 0)
                                             1
                                             (if (= b 1)
                                                 c
                                                 (power-to a (- b 1)(my-mult a c))))))
                      (power-to x n x)))


; result -> 2^x
(define two-to-the-power-of (lambda (x)
                              (my-power-to 2 x)))
