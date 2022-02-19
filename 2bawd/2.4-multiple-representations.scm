; 2.4 Multiple Representations for Abstract Data
; By isolating the underlying representations of data objects, we can divide the task of designing a large program into smaller tasks that can be performed separately. 
; Our main technique for building generic procedures will be to work in terms of data objects that have type tags, that is, data objects that include explicit information about how they are to be processed.


; 2.4.1 Representations for Complex Numbers


; 2.4.2 Tagged data


; 2.4.3 Data-Directed Programming and Additivity
; The general strategy of checking the type of a datum and calling an appropriate procedure is called dispatching on type.
; The general procedure approach is not additive, you must modify the procedure each time a new representation is installed.
; message passing