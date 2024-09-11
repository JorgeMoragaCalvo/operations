#lang racket

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