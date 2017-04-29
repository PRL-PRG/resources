
test <- function (src) {
    ast1 <- parse(text = src)
    src2 <- toString(ast1)
    print(src2)
    ast2 <- parse(text = src2)
    
    v1 <- eval(ast1)
    v2 <- eval(ast2)

    v1 == v2
}

test("33333.11111122222222") # FALSE
test("33333.111111") # TRUE
