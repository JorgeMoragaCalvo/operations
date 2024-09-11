#lang racket
(require "utils-list.rkt")

(provide minor-in-list)

(define minor-in-list (lambda (lst)
                        (define my-minor (lambda (l n)
                                             (if(null? l)
                                                n
                                                (if(minor (car l) n)
                                                   (my-minor (cdr l)(car l))
                                                   (my-minor (cdr l) n)))))
                        (my-minor lst (car lst))))