#lang racket
(require "basic-operations.rkt")
(require "sub-square.rkt")

(provide distance)

(define distance (lambda (x1 y1 x2 y2)
                   (my-sum (sub-square x2 x1)(sub-square y2 y1))))
