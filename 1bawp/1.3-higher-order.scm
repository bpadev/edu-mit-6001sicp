; 1.3 Formulating Abstractions with Higher-Order Procedures
; We will be severely limited in our ability to create abstractions if we are restricted to procedures whose parameters must be numbers.
; We will need to construct procedures that can accept procedures as arguments or return procedures as values.
; Procedures that manipulate procedures are called higher-order procedures.

; 1.3.1 Procedures as Arguments
(define (sum-integers a b)
(if (> a b)
    0
    (+ a (sum-integers (+ a 1)))))

(define (sum-cubes a b)
(if (> a b)
    0
    (+ (cube a) (sum-cubes (+ a 1) b))))

(define (pi-sum a b)
(if (> a b)
    0
    (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))))

; 1.3.2 Constructing Procedures Using Lambda
; Using lambda, we can write the integral procedure without having to define the auxiliary procedure add-dx.
; In general lambda is used to create procedures in the same way as define, except that no name is specified for the procedure.

; 1.3.3 Procedures as General Methods
; This section used math exmaples beyond my understanding, the exercises as well. However, I do still understand the power of structuring procedures in a general manner.
; This allows for procedures that have uses across a program, the low specificity allows for reuse in certain places. Another example of modularity and abstraction.

; 1.3.4 Procedures as Returned Values
; This section used the same previous examples, but I already understand the power this functionality brings.