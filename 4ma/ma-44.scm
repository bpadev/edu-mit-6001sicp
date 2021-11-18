; 4.4 Logic Programming
; In a constraint system the direction and the order of computation are not so well specified; in carrying out a computation the system must therefore provide more detailed "how to" knowledge than would be the case with an ordinary arithmeitc computation.
; Logic programming combines a relational vision of programming with a powerful kind of symbolic pattern matching called unification.
; Part of the power comes from the fact that a single "what is" fact can be used to solve a number of different problems that would have different "how to" components.
(define (append x y)
  (if (null? x)
    y
    (cons (car x) (append (cdr x) y))))
; Logic programming is an active field of research in computer science.


; 4.4.1 Deductive Information Retrieval
; 