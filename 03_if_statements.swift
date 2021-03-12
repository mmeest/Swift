let a = 4

if a < 4
{
    print("only if a is less than 4")
}
else if a < 8 
{
    print("only if a is less than 8")
}
else
{
    print("nothing was true")
}

let b = 10
let c = 1
let d = 3

if b < 4 || (c < 4 &&  d == 3) {
    print("branch 1")
}
else if b < 8 {
    print("branch 2")
}
else if b == 10 {
    print("branch 3")
}
else {
    print("nothing was true")
}

var first = 3
var second = 5

if first != second {
    print("first does'nt equal second")
}