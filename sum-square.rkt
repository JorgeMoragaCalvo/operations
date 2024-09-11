#lang racket
(require "basic-operations.rkt")
(require "mult.rkt")

(provide sum-square)
(provide my-square)

(define my-abs (lambda (x)
                 (if (< x 0)
                     (- 0 x)
                     x)))

; result (a)^2 or (-a)^2
(define my-square (lambda (x)
                    (my-mult (my-abs x) (my-abs x))))

; result (a + b)^2
(define sum-square (lambda (x y)
                     (my-square (my-sum x y))))