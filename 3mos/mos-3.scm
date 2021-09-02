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