#lang racket

;(require "swap.rkt")
(require "basic-operations.rkt")

(provide major)
(provide my-length)
(provide minor)

;it returns a boolean value
(define major (lambda (x y)
                (> x y)))

;it returns a boolean value
(define minor (lambda (x y)
                (< x y)))

;it returns the length of the list
(define my-length (lambda (lst)
                    (define length (lambda (l accu)
                                     (if (null? l)
                                         accu
                                         (length (cdr l) (+ accu 1)))))
                    (length lst 0)))

; 
(define sum-list (lambda (lst)
                   (define sum (lambda (l accu)
                                 (if (null? l)
                                     accu
                                     (sum (cdr l)(my-sum (car l) accu)))))
                   (sum lst 0)))

(define list-from-to (lambda (x)
                       (define list-from (lambda (n1 n2 lst)
                                           (if (>= n2 n1)
                                               lst
                                               (list-from n1 (my-sum n2 1) (cons n2 lst)))))
                       (list-from x 1 '())))