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
; We can use logical operators to form compound queries. 
; We can then abstract queries to form rules. 
(rule (conclusion) (body)) ; conclusion is a pattern and body is any query.


; 4.4.2 How the Query System Works
; The query system is organized around two central operations called pattern matching and unification. 
; A pattern matcher is a program that tests whether some datum fits a specified pattern. 
((a b) c (a b)) 
; matches the below pattern with the following pattern variable bound to the following
(?x c ?x) ?x (a b)
; The pattern matcher used by the query system takes as inputs a pattern, a datum, and a frame that specifies bindings for various pattern variables.
; The testing of patterns against frames is organized through the use of streams.
; There is a large literature on data-base-management systems that is concerned with how to handle complex queries efficiently. 
; A generalization of pattern matching is called unification, in which both the "pattern" and the "datum" may contain variables.
; The unification algorithm is the most technically difficult part of the query system.
; Rule definitions are the means of abstraction in the query language.


;