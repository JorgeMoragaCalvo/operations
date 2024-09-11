#lang racket
(provide my-sum)
(provide my-sub)
(provide summation)


(define my-sum (lambda (x y)
              (+ x y)))


(define my-sub (lambda (x y)
                  (- x y)))

; result (summation 3) -> 3 + 2 + 1 = 6
(define summation (lambda (x)
                    (define summ (lambda (n accu)
                                   (if (= n 0)
                                       accu
                                       (summ (my-sub n 1) (my-sum n accu)))))
                    (summ x 0)))


