#lang racket

;(require "swap.rkt")
(require "basic-operations.rkt")
(require "sum-square.rkt")

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


(define square-list (lambda (lst)
                      (define square (lambda (l1 l2)
                                       (if (null? l1)
                                           l2
                                           (square (cdr l1) (cons (my-square (car l1)) l2)))))
                      (square lst '())))


(define is-in? (lambda (lst searched)
                 (cond [(null? lst) #f]
                       [(= (car lst) searched) #t]
                       [else (is-in? (cdr lst) searched)])))