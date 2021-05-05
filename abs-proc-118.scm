; Computational process - abstract beings that inhabit computers.
; as they evolve, processes manipulate other abstract things called data.
; The evolution of a process is directed by a pattern of rules called a program.
; People create programs to direct processes.
#lang racket


; 1.1 The Elements of Programming
; All powerful languages have three mechanisms:
; (1) primitive expressions - represent the simplest entities the language is concerned with.
456
(+ 45 67)
; (2) means of combination - compound elements are built from simpler ones.
(+ (- 45 34) (* 6 7))
; (3) means of abstraction - compound elements can be named and manipulated as units.
(define age 22)

;In programming, we deal with two kinds of elements: procedures and data.


; 1.1.1 Expressions
486

(+ 45 67) ; + is the operator, 45 & 67 are the operands.

(+ (- 45 5) (* 5 7))

(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6)) ; this is called pretty-printing


; 1.1.2 Naming and the Environment
; We say the name identifies a variable whose value is the object.
; The interpreter must maintain some sort of memory that keeps track of the name-object pairs.
; This memory is called the environment (global environment)

(define size 2)


; 1.1.3 Evaluating Combinations
; 1.1.4 Compound Procedures
(define (square x) (* x x)) ; this is a compound procedure. (define ((name) (formal paramaters)) (body))
(+ (square x) (square y))

(define (sum-of-squares x y)
  (+ (square x) (square y)))


; 1.1.5 The Substitution Model for Procedure Application

(f 5) ; procedure definition, 5 is the actual parameter.
(sum-of-square (+ a 1) (* a 2)) ; replace formal parameters with 5.
(sum-of-square (+ 5 1) (* 5 2))
(+ (square 6) (square 10)) ; substitute values in for the formal parameters in the body of sum-of-square.
(+ (* 6 6) (* 10 10)) ; reduce
(+ 36 100) ; reduce
136 ; result

; Applicative order versus normal order
; Normal order, fully expand and then reduce.
; Applicative order, evaluate the arguments and then apply.


; 1.1.6 Condtional Expressions and Predicates
; primtive predicates, =, >, <
; (e) is the consequent expression
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(cond ((p1) (e1))
      ((p2) (e2))
      .
      .
      .
      ((pn) (en))) ; general form of a conditional expression.

(if (predicate) (consequent) (alternative)) ; if expression
(and (e)) ; compound predicates
(not (e))
(or (e))