func addNumbers(){
    let a = 1
    let b = 2
    let c = a + b

    print(c)                // prints out 3
}

addNumbers()             // calling a function


// Function with return value

func addMyNumbers() -> Int {  // -> Int - return type
    let a = 1
    let b = 1
    let c = a + b

    return c
}

let sum = addMyNumbers()       // assigning functions value to variable 'sum'

print(sum)

// Function input parameters

func addTwoNumbers(using number1:Int, and number2:Int) -> Int {     // add two numbers using number1 and number2
    let a = number1
    let b = number2

    return a + b
}

let sum_2 = addTwoNumbers(using:2, and:2)

print(sum_2)