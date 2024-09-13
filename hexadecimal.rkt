#lang racket

(define hexa (lambda (x)
               (cond
                 [(equal? x 10) "A"]
                 [(equal? x 11) "B"]
                 [(equal? x 12) "C"]
                 [(equal? x 13) "D"]
                 [(equal? x 14) "E"]
                 [(equal? x 15) "F"]
                 [else x])))