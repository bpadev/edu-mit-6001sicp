; 4.2 Variations on a Scheme--Lazy Evaluation
; New languages are often invented by first writing an evaluator that embeds the new language within an existing high-level language.


; 4.2.1 Normal Order and Applicative Order
; Scheme is an applicative-order language, all arguments to Scheme procedures are evaluated when the procedure is applied.
; Normal-order languages delay evaluation of procedure arguments until the actual argument values are needed. This is considered lazy evaluation.
(define (try a b)
  (if (= a 0) 1 b))

(try 0 (/ 1 0)) ; generates an error in Scheme, with lazy evaluation there would be no error. 1 / 0 would never be evaluated because 0 = 0 would return 1.
; If the body of a procedure is entered before an argument has been evaluated we say the procedure is non-strict in that argument.
; If the argument is evaluated before the body of the procedure is entered we say that the procedure is strict in that argument.


; 4.2.2 An Interpreter with Lazy Evaluation
; Delayed arguments are not evaluated; instead, they are transformed into objects called thunks.
; The thunk must contain the information required to produce the value of the argument when it is needed, as if it had been evaluated at the time of the application.
; The process of evaluating the expression in a thunk is called forcing. In general, a thunk will be forced only when its value is needed.
; A thunk must package an expression together with the enviornment, so that argument can be produced later. (one easy way is to make a list containing the two)


; 4.2.3 Streams as Lazy Lists
; A special form is not a first-class object like a procedure, so we cannot use it together with higher-order procedures.