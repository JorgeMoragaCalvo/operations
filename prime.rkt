#lang racket

(require "div.rkt")
(require "mult.rkt")
(require "even.rkt")
(require "basic-operations.rkt")
(require "swap.rkt")

(provide is-prime?)
(provide prime-from-to)
(provide prime-factor-list)


(define is-prime? (lambda (n)
                    (define (prime? n div)
                      (cond [(> (my-mult div div) n) #t]
                            [(zero? (my-remainder n div)) #f]
                            [else (prime? n (my-sum div 2))]))
                    (cond [(<= n 1) #f]
                          [(= n 2) #t]
                          [(is-even? n) #f]
                          [else (prime? n 3)])))

; prime list from 2 to x
(define prime-from-to (lambda (x)
                        (define prime (lambda (n1 n2 l)
                                        (cond [(>= n2 n1) (my-reverse l)]
                                              [(equal? (is-prime? n2) #t) (prime n1 (my-sum n2 1) (cons n2 l))]
                                              [else (prime n1 (my-sum n2 1) l)])))
                        (prime x 2 '())))

; prime factors of x
(define prime-factor-list (lambda (x)
                            (define factor-list (lambda (n i l)
                                                  (cond [(equal? n 1) (my-reverse l)]
                                                        [(equal? (my-remainder n i) 0)(factor-list (my-div n i) i (cons i l))]
                                                        [else (factor-list n (my-sum i 1) l)])))
                            (factor-list x 2 '())))
                            