// For loop

for index in 1...15 {
    print("hello")          // Will be printed 15 times
    print(index)            // Will print numbers 1-15
}

for index in 1...5 {
    var sum = 0
    sum += index
    print(sum)              // prints out numbers 1-5
}

// While loop

var counter = 5 

while counter > 0 {
    print("hello")          // Will ptint hello 5 times
    counter -= 1
}

// Repeat-While loop

var counter_2 = -5

repeat {
    print("hello")       // Will print hello 1 time
    counter = counter - 1
} while counter_2 > 0