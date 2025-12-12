# Understanding Type System: Why Function Types Cannot Appear at the Top Level
## Solidity

### Contract
- contract{} IS semantically a nominal-type
- contract{} IS syntactically a top-level-declaration grammar

### Functions
-  (function (foo) returns(uint)) IS semantically a function-type
-  (function (foo) returns(uint)) IS syntactically an expression type
## Struct
- struct{} IS semantically
- struct{} IS syntactically a top-level-declaration grammar

Level 1 — Syntax vs Semantics
Level 2 — Declaration Grammar vs Expression Grammar
Level 3 — Type Theory: Where Function Types Live
### Level 4 — Compiler Design: IR (Intermediate Representation)

    | Top-level Item | Compiler IR Mapping          |
    | -------------- | ---------------------------- |
    | contract X     | object layout + codegen unit |
    | type T is U    | typedef node                 |
    | function f()   | codegen unit                 |
    | library L      | namespace + codegen          |

Level 5 — ABI & Runtime Constraints
Level 6 — Language Comparisons
Level 7 — Category Theory & Lambda Calculus Foundations

## Level 8 — The Mental Model You Need
The difference between:

- Deﬁnition vs declaration
    - Type-level constructs vs module-level constructs

- Grammar categories:

    - Declarative

    -Statement

    -expression

    - type

ML/Haskell (separation of types and values)
