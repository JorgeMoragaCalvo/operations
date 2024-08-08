#lang racket
(require "basic-operations.rkt")
(require "mult.rkt")

(provide sum-square)
(provide my-square)

(define my-abs (lambda (x)
                 (if (< x 0)
                     (- 0 x)
                     x)))

(define my-square (lambda (x)
                    (my-mult (my-abs x) (my-abs x))))

(define sum-square (lambda (x y)
                     (my-square (my-sum x y))))