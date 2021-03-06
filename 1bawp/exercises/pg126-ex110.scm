#lang racket

; Exercise 1.10
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        ((else (A (- x 1)
                  (A x (- y 1)))))))
; What are the values of the following expressions? (A 1 10), (A 2 4), (A 3 3)
(A 1 10)
(A 2 4)
(A 3 3)