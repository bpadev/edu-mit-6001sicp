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
; So long as we do not use assignments, two evaluations of the same procedure with the same arguments will produce the same result, so that procedures can be viewed as computing mathematical functions. (functional programming)
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
; Look further into the agenda data structure, which seems to be just a headed list.


; 3.3.5 Propagation of Constraints
; Makes note of traditional programs being organized as one-directional computations, which perform operations on prespecified arguments to produce desired outputs.
; However, we often model systems in terms of relations among quantities. 
; Make note of constraint networks.


; 3.4 Concurrency: Time Is of the Essence
; The central issue lurking beneath the complexity of state, sameness, and change is that by introducing assignment we are forced to admit time into our computational models.
; Objects in the world do not change one at a time in sequence. Rather we perceive them as acting concurrently--all at once.
; If it is possible to decompose a problem into pieces that are relatively independent and need to communicate only rarely, it may be possible to allocate pieces to separate computing processors, producing a speed advantage proportional to the number of processors available.


; 3.4.1 The Nature of Time in Concurrent Systems
; Importance of the bank withdrawal example.


; 3.4.2 Mechanisms for Controlling Concurrency
; Serialization implements the following idea: Processes will execute concurrently, but there will be certain collections of procedures that cannot be executed concurrently.
; Serializers provide a powerful abstraction that helps isolate complexities of concurrent programs so that they can be dealt with carefully and (hopefully) correctly.
; Concurrent programmming can be treacherously difficult when there are multiple shared resources.
; We implement serializers in terms of a more primitive synchronization mechanism called a mutex. A mutex (mutual exclusion) is an object that supports two operations -- the mutex can be acquired, and the mutex can be released.
; The situation when serializers cause two processes to wait on each other to exit to continue is called deadlock.


; 3.5 Streams
; Streams can mitigate some of the complexity of modeling state.
; From an abstract point of view, a stream is simply a sequence.
; Stream processing lets us model systems that have state without ever using assignment or mutable data.


; 3.5.1 Streams Are Delayed Lists
; (review streams)
; The difference between streams and lists is the time at which the elements are evaluated.
; In general, we can think of delayed evaluation as "demand-driven" programming, whereby each stage in the stream process is activated only enough to satisfy the next stage.
; The first time the memoized procedure is run, it saves the compound result. On subsequent evaluations, it simply returns the result.


; 3.5.2 Infinite Streams
; We can use streams to represent sequences that are infinitely long.


; 3.5.3 Exploiting the Stream Paradigm
; Streams with delayed evaluation can be a powerful modeling tool, providing many of the benefits of locat state and assignment.
; 
; 