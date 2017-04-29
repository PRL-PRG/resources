
## Variable

The key of a binding in an environment.

### Example

```r
x <- 3
```

in the above code x is a variable in the environemnt that can be retrieved by `environment()`.

## Value

Any SEXP

## Object

same as [Value](#value)

## Expression 

SEXP value representing an AST.
Stored as a list where the first element is the operator and the following are arguments.
It is typicaly retrieved either by quoting or deparsing.

Expressions values can be of SEXP types: LANGSXP, REALSXP, ...? (TODO)

### Example

#### Examples with quote

```r
e1 <- quote(x + 42)
typeof(e1)
# [1] "language"
e1[[1]]
# `+`
typeof(e1[[1]])
# [1] "symbol"
e1[[2]]
# x
typeof(e1[[2]])
# [1] "symbol"
e1[[3]]
# [1] 42
typeof(e1[[3]])
# [1] "double"
```

`e1` is going to be equal to `as.language(list(symbol("+"), symbol("x"), 42))`.

### Warning

The AST of a number is the number itself and not some special value to represent lexical elements representing number literals.

```r
e2 <- quote(3)
typeof(e2)
# [1] "double"
```

This means that parsing a numerical literal and then deparsing it might return a different literal that when parsed again will result in a different value (e.g. [code](./num-literal-problem.R)).

## Promise

SEXP value that encapsulates a different SEXP value that is lazily evaluated (once evaluated the resulting value is cached).
It's stored as an expression with specified environment in which it should evaluate.
All function arguments are promises.

## Forcing (a promise)

The act of requesting the encapsulated value of a promise.

## Function

all functions in R (includes Closures, BuiltIn and Special)

## Closure

every function that captures its scope is a closure. All functions in R are functions except special cases: built-in and special functions.
