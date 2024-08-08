#lang racket
(require "basic-operations.rkt")

(provide my-div)
(provide my-remainder)


(define my-div (lambda (x y)
                 (define div (lambda (n1 n2 accu)
                               (if (= n1 0)
                                   accu
                                   (div (my-sub n1 n2) n2 (my-sum accu 1)))))
                 (div x y 0)))


(define my-remainder (lambda (x y)
                       (if (< x y)
                           x
                           (my-remainder (my-sub x y) y))))