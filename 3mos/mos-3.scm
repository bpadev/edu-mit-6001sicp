; 3 Modularity, Objects, and State
; Further moving up the abstraction barriers, we will now look at organizational principles for formulating the overall design of a program.
; One way of doing so is to base the structure of our programs on the structure of the system being modeled. (OOP)


; 3.1 Assignment and Local State
; An object is said to "have state" if its behavior is influenced by its history.
; ex. "Can I withdraw $100?" depends on the deposit history.
; Each computational object must have its own local state variables describing the actual object's state.


; 3.1.1 Local State Variables
; Until now all our procedures would return the same result with the same input.
(withdraw 20) ; will not return the same result everytime because the account balance is being decremented.
; The book also introduces encapsulation here, also known as the hiding principle.


; 3.1.2 The Benefits of Introducing Assignment
; If we wish to write computer programs whose structure reflect this decomposition, we make computational objects whose behavior changes with time. We model state with local state variables, and we model the changes of state with assignments to those variables.


; 3.1.3 The Costs of Introducting Assigment
; Our programming language can no longer be interpreted in terms of the substitution model of procedure application.
; So long as we do not use assignments, two evaluations of the same procedure with the same arguments will produce the same result, so that procedures can be viewed as computing mathematical functions.
; Programming without any use of assignments is known as functional programming.
; Substitution is based ultimately on the notion that the symbols in our language are essentially names for values. Now a variable somehow refers to a place where a value can be stored, and the value stored at this place can change.
; We will see how environments play this role of "place" in our computational model.
; A language that supports the concept that "equals can be substituted for equals" in an expression without changing the value of the expression is said to be referentially transparent. 
; (the phenomenon of a single computational object being accessed by more than one name is known as aliasing.)
; In contrast to functional programming, programming that makes extensive use of assignment is known as imperative programming. Programs written in imperative style are susceptible to bugs that cannot occur in functional programs.


; 3.2 The Environment Model of Evaluation
; A variable must somehow designate a "place" in which values can be stored. In our new model of evaluation, these places will be maintained in structures called environments.
; An environment is a sequence of frames. Each frame is a table of bindings, which associate variable names with their corresponding values.
; Each frame has a pointer to its enclosing environment, unless the frame is global.


; 3.2.1 The Rules for Evaluation
; One should never write programs that depend on some particular order. A sophisticated compiler might optimize a program by varying the order in which subexpressions are evaluated.


; 3.2.2 Applying Simple Procedures
; some people prefer redefinition of existing symbols to signal errors or warnings. (like const in JS)


; 3.2.3 Frames as the Repository of Local State


; 3.2.4 Internal Defintions


; 3.3 Modeling with Mutable Data
; Data objects for which mutators are defined are known as mutable data objects.


; 3.3.4 A Simulator for Digital Circuits 
; Digital systems are constructed by interconnecting simple elements.
; This section dives deep into building digital circuits modeling real systems.
;