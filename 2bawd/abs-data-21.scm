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


; 2.2.4 Levels of language for robust design
; Stratified design, the notion that a complex system should be structured as a sequence of levels that are described using a sequence of languages.
; For example, in computer enginering, resistors and transistors are combined (and described using a language of analog circuits) to produce parts such as and-gates and or-gates, which form the primitives of a language for digital-circuit design.


; 2.3 Symbolic Data


; 2.3.1 Quotation


; 2.3.3 Example: Representing Sets
; Focuses on most efficient ways to represent the data to improve space and time complexity. 
; The claim that searching a tree can be performed in a logarithmic number of steps rests on the assumption that the tree is "balanced", that the left and the right subtree of every tree have approximately the same number of elements, so that each subtree contains about half the elements of its parent.


; 2.3.4 Example: Huffman Encoding Trees


; 2.4 Multiple Representations for Abstract Data
; By isolating the underlying representations of data objects, we can divide the task of designing a large program into smaller tasks that can be performed separately. 
; Our main technique for building generic procedures will be to work in terms of data objects that have type tags, that is, data objects that include explicit information about how they are to be processed.


; 2.4.1 Representations for Complex Numbers


; 2.4.2 Tagged data


; 2.4.3 Data-Directed Programming and Additivity
; The general strategy of checking the type of a datum and calling an appropriate procedure is called dispatching on type.
; The general procedure approach is not additive, you must modify the procedure each time a new representation is installed.
; message passing
