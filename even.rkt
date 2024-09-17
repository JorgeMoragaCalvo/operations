#lang racket

(require "div.rkt")

(provide is-even?)

(define is-even? (lambda (x)
                  (if (= (my-remainder x 2) 0)
                      #t
                      #f)))
