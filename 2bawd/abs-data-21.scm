; 2.1 Introduction to Data Abstraction
; Data abstraction is a methodology that enables us to isolate how a compound data object is used from the details of how it is constructed from more primitive data objects.
; Pairs allow us to construct a compound data object, we can access this object using car, cdr.


; 2.1.2 Abstraction Barriers
; In general, the underlying idea of data abstraction is to identify for each type of data object a basic set of operations in terms of which all manipulations of data objects of that type will be expressed, and then to use only those operations in manipulating the data.
; In effect, procedures at each level are the interfaces that define the abstraction barriers and connect the different levels.


; 2.1.3 What Is Meant by Data?


; 2.1.4 Exented Exercise: Interval Arithmetic


; 2.2 Hierarchical Data and the Closure Property
; box-and-pointer representation
; closure meaning elements closed under an operation.


; 2.2.1 Representing Sequences
; - an ordered collection of data objects.
; It is better to have 100 functions operate on one data structure than to have 10 functions operate on 10 data structures.


; 2.2.2 Hierarchical Structures
; The representation of sequences in terms of lists generalizes naturally to represent sequences whose elements may themselves be sequences. 
; Another way to think of sequences whose elements are sequences is as trees.


; 2.2.3 Sequences as Conventional Interfaces 
; (do the map, filter, accumlator exercises)