#lang racket
(require "mult.rkt")

(provide my-power-to)


(define my-power-to (lambda (x n)
                      (define power-to (lambda (a b c)
                                         (if (= b 1)
                                             c
                                             (power-to a (- b 1)(my-mult a c)))))
                      (power-to x n x)))
