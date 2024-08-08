#lang racket
(require "basic-operations.rkt")
(require "mult.rkt")

(provide sum-square)
(provide my-square)

(define my-square (lambda (x)
                    (my-mult x x)))

(define sum-square (lambda (x y)
                     (my-square (my-sum x y))))