# Parsing, Lexical Scoping and Incremental Development for a Dependently-Typed Programming Language

Beluga is a functional programming language and proof assistant for specifying formal systems in contextual LF, an extension of the Edinburgh Logical Framework, and mechanically proving theorems about them using recursive programs.
To facilitate the incremental development of proofs with commands and automation tactics, the Harpoon interactive proof environment is subsequently implemented as a read-eval-print loop with structural editing features over Beluga programs.
Due to architectural limitations in the implementation of Beluga and Harpoon, top-down and out-of-order proof development sessions can lead to invalid proof states and unsound translated programs.

This thesis reports on technical challenges and solutions to soundly implementing the structural editing of proofs, including the navigation between proof holes, with a main focus on syntactic analysis and the early phases of semantic analysis.
Aspects of programming language syntax design are explored to support context-sensitive parsing of user-defined prefix, infix and postfix operators with a two-phase parser.
Then, name resolution for Beluga is rectified with the implementation of a uniform referencing environment representation for indexing programs with separate contexts for different classes of variables.
Finally, the revised parser and name resolution phases are integrated into Harpoon to ensure the state of identifiers in scope at any given proof hole is sound with respect to where the hole occurs.
