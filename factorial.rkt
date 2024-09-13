#lang racket
(require "mult.rkt")

(provide my-factorial)


#|
(define my-factorial (lambda (x)
                       (define factorial (lambda (a b)
                                           (if (= a 0)
                                               b
                                               (factorial (- a 1)(my-mult a b)))))
                       (factorial x 1)))
|#

(define my-factorial (lambda (x)
                       (define factorial (lambda (a b)
                                           (if (= a 0)
                                               1
                                               (if (= a 1)
                                                   b
                                                   (factorial (- a 1)(my-mult a b))))))
                       (factorial x 1)))