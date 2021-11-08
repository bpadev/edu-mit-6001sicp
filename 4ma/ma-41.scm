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
; 