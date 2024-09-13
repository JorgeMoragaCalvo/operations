#lang racket
(require "basic-operations.rkt")
(require "mult.rkt")

(provide my-div)
(provide my-remainder)

; it returns the integer part of the division
(define my-div (lambda (x y)
                 (define div (lambda (n1 n2 accu)
                               (if (< n1 n2)
                                   accu
                                   (div (my-sub n1 n2) n2 (my-sum accu 1)))))
                 (div x y 0)))


(define my-remainder (lambda (x y)
                       (if (< x y)
                           x
                           (my-remainder (my-sub x y) y))))

(define mult-by-ten (lambda (x)
                      (my-mult x 10)))

; it returns the decimal part of a division. The first decimal
; (my-decimal 5 2) -> 5
(define my-decimal (lambda (x y)
                     (my-div (mult-by-ten (my-remainder x y)) y)))


(define number-of-digits (lambda (x)
                           (define digits (lambda (n accu)
                                            (if (< n 10)
                                                accu
                                                (digits (my-div n 10)(my-sum accu 1)))))
                           (digits x 1)))