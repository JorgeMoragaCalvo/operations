#lang racket

(require "utils-list.rkt")

(provide major-in-list)

(define major-in-list (lambda (lst)
                        (define my-major (lambda (l n)
                                           (if (null? l)
                                               n
                                               (if(major (car l) n)
                                                  (my-major (cdr l) (car l))
                                                  (my-major (cdr l) n)))))
                        (my-major lst (car lst))))