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


; 4.4.3 Is Logic Programming Mathematical Logic
; This identification of the query language with mathematical logic is not really valid, though, because the query language provides a control structure that interprets the logical statements procedureally. 
; The aim of logic programming is to provide the programmer with techniques for decomposing a computational problem into two separate problems: "what" is to be computed, and "how" this should be computed.
; The not of logic programming languages reflects the so-called closed world assumption that all relevant information has been included in the data base.


; 4.4.4 Implementing the Query System

; 4.4.4.1 The Driver Loop and Instantiation

; 4.4.4.2 The Evaluator
; Any query that is not identified as a special form is assumed to be a simple query.

; 4.4.4.3 Finding Assertions by Pattern Matching
; We never modify a stored binding and we never store more than one binding for a given variable. 

; 4.4.4.4 Rules and Unification

; 4.4.4.5 Maintaining the Data Base
; One important problem in designing logic programming languages is that of arranging things so that as few irrelevant data-base entries as possible will be examined in checking a given pattern.

; 4.4.4.6 Stream Operations

; 4.4.4.7 Query Syntax Procedures

; 4.4.4.8 Frames and Bindings
; Frames are represented as lists of bindings, which are variable-value pairs.