var a = "dog"
var b = "cat"
var c = "bird"

a = "my " + a           // concatenating: 'my dog'

// Array - collection of data

var d = ["dog", "cat", "bird"]      // creating Array

print(d[0])             // accessing first item in array

// concatenating 'my ' with array items
a = "my " + d[0]
b = "my " + d[1]
c = "my " + d[2]

// using loop to concatenate all array objects
for counter in 0...2{
    print("my " + d[counter])
}

// another way to iterate thru array
for item in d{
    print("my " + item)
}


var e = [String]()              // declaring empty string array

print(d)                        // ["dog", "cat", "bird"]
d += ["mouse", "owl"]           // adding items to array
print(d)                        // ["dog", "cat", "bird", "mouse", "owl"]

d.remove(at: 0)                 // remove first element
print(d)                        // ["cat", "bird", "mouse", "owl"]

d[0] = "turtle"                 // replacing first item
print(d)                        // ["turtle", "bird", "mouse", "owl"]

print(d.count)                  // length of array