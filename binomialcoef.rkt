#lang racket

(require "basic-operations.rkt")
(require "mult.rkt")
(require "div.rkt")
(require "factorial.rkt")

(provide binomial-coef)


(define bc-sub (lambda (n k)
               (my-factorial (my-sub n k))))

(define bc-mult (lambda (n k)
                  (my-mult (my-factorial k)(bc-sub n k))))

(define binomial-coef (lambda (n k)
                        (my-div (my-factorial n)(bc-mult n k))))