; Metalinguistic Abstraction
; establishing new languages.
; In programming not only can we formulate new languages but we can also implement these languages by constructing evaluators.
; An evaluator (or interpreter) for a programming language is a procedure that, when applied to an expression of the language, performs the actions required to evaluate that expression.
; The evaluator, which determines the meaning of expressions in a programming language, is just another program.


; 4.1 The Metacircular Evaluator
; An evaluator that is written in the same language that it evaluates is said to be metacircular.


; 4.1.1 The Core of the Evaluator
; The evaluation process can be described as the interplay between two procedures: eval and apply.
; Eval takes as arguments an expression and an environment. Eval is structured as a case analysis of the syntactic type of the expression to be evaluated.
; Apply takes two arguments, a procedure and a list of arguments to which the procedure should be applied.


; 4.1.2 Representing Expressions
; Expressions (such as cond) that we choose to implement as syntactic transformations are called derived expressions.


; 4.1.3 Evaluator Data Structures
; The evaluator implementation must also define the data structures that the evaluator manipulates internally, as part of the execution of a program, such as the representation of procedures and environments and the representation of true and false.
; We represent an environment as a list of frames. Each frame of an environment is represented as a pair of lists.


; 4.1.4 Running the Evaluator as a Program


; 4.1.5 Data as Programs
; One operational view of the meaning of a program is that a program is a description of an abstract (perhaps infinitely large) machine. 
; We can regard the evaluator as a very special machine that takes as input a description of a machine.
; From this perspective, our evaluator is seen to be a universal machine. It mimics other machines when these are described as Lisp programs.
; The deep idea here is that any evaluator can emulate any other.


; 4.1.6 Internal Definitions
; Talks about the issue of recursive procedures in internal defintions and how our interpreter must treat these.
; Touches upon scope and how local variables can truly all be local by using a version of lamba.


; 4.1.7 Separating Syntactic Analysis from Execution