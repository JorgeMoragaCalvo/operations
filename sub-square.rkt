#lang racket
(require "basic-operations.rkt")
(require "sum-square.rkt")

(provide sub-square)

(define sub-square (lambda (x y)
                     (my-square (my-sub x y))))