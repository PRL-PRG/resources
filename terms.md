
## Variable

name that is bound to a value inside an environment

## Value

Any SEXP

## Object

same as Value

## Expression 

language objects or vector of language objects

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
