#lang racket
(require "mult.rkt")

(provide my-factorial)


(define my-factorial (lambda (x)
                       (define factorial (lambda (a b)
                                           (if (= a 1)
                                               b
                                               (factorial (- a 1)(my-mult a b)))))
                       (factorial x 1)))