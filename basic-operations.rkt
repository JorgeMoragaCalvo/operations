#lang racket
(provide my-sum)
(provide my-sub)


(define my-sum (lambda (x y)
              (+ x y)))


(define my-sub (lambda (x y)
                  (- x y)))
