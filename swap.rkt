#lang racket

(require "utils-list.rkt")

(provide my-swap)

; it reverses the list
(define my-swap (lambda (lst)
                  (define swap (lambda (l1 l2)
                                 (if (null? l1)
                                     l2
                                     (swap (cdr l1)(cons (car l1) l2)))))
                  (swap lst '())))

(define change (lambda (x y)
                 (list y x)))

; it swaps a list of two elements
(define m-swp (lambda (lst)
                (define swp (lambda (l1 l2)
                              (if (> (my-length l1) 2)
                                  #f
                                  (if (null? l1)
                                      l2
                                      (swp (cdr l1)(cons (car l1) l2))))))
                (swp lst '())))