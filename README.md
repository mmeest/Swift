<p align="center"><img src="swift.png" width="250px"></p>

<h1 align="center">
    <strong>Swift</strong>
</h1>
<h3 align="center">
    Swift programming language
</h3>

<p align="left"><img src="mindmap.jpg" width="450px"></p>
*Swift Mind Map*


## Contents
- [Swift](#swift)
- [Installing Swift in Windows](#installing-swift-in-windows)
- [Variables](#variables)
- [Datatypes](#datatypes)
- [IF Statement](#if-statement)
- [Switch Statements](#switch-statements)
- [Loops](#loops)
- [Functions](#functions)
- [Classes](#classes)
- [Inheritance](#inheritance)
- [UIKit](#uikit)
- [Initializers](#initializers)
- [Optionals](#optionals)
- [Properties](#properties)
- [Array](#array)
- [Set](#set)
- [Dictionary](#dictionary)


## Swift
**Authors** - Chris Lattner, Doug Gregor, John McCall, Ted Kremenek, Joe Grof\
**Developer** - Apple Inc\
**First appeared** - June 2, 2014

https://swift.org/


## Installing Swift in Windows

1. Go to swiftforwindows.github.io , download Swift and install and run the program

2. Create text file named 'demo.swift' with following contents
```
import Swift
print("Hello World!")
```

3. Open that file in Swift program, click 'Compile' and then 'Run'\
Console will display: Hello World!

4. Klick 'Start', write 'Environment Variables' and klick 'Enter'

5. In 'User variables' select 'Path' and klick 'Edit'

6. Add swift folder path. By default 'C:\Swift\bin'

7. Now to check the swift version open command prompt 'cmd' and type:
´´´
swift --version
´´´

8. Locate your 'demo.swift' file in command prompt and run it by writing 
```
swift demo.swift
```

9. Open Visual Studio Code and add following extensions
* Code Runner
* Swift Language

10. Try to run your 'demo.swift' in VSCode

If you get error *command 'code-runner.run' not found*\
Then open 'C:\Users*.vscode\extensions\formulahendry.code-runner-0.9.10/out/src/codeManager.js' and comment out following lines
```
line 12:
//const micromatch = require("micromatch");

line 225~236:

/* if (executor == null) {
const executorMapByGlob = this._config.get("executorMapByGlob");
if (executorMapByGlob) {
const fileBasename = path_1.basename(this._document.fileName);
for (const glob of Object.keys(executorMapByGlob)) {
if (micromatch.isMatch(fileBasename, glob)) {
executor = executorMapByGlob[glob];
break;
}
}
}
} */
```


## Variables
**// some comment** - single line comment
**/* some comment */*** - multi line comment

**var** - keyword to declare new variable

Declaring string variable. 
```
var str - "Hello World!"
```

**print** - keyword for printing out text

Already declared and assigned variables can be reassigned
```
var a = 1
a = 3
```

You cannot reassign different type of value(for example int to string variable)
```
var str = "Hello World!"
str = 4                   // Not allowed
```

Common practice of naming variables meanigful names and camelcase. For example
```
var myNumberOfApples = 19
```

**Constants** - variables that can not be reassgned
**let** - declaring constant. For example
```
let c = 10
```


## Datatypes
**String:**   - Piece of text\
**Int:**      - Whole numbers positive and negative\
**Float:**    - Decimal numbers\
**Double:**   - Large decimal numbers\
**Bool:**     - True or False

```
var str_1 = "Hello World!"      // String type variable
var str_2 = "3"

var a = 3                       // Integer type variable

var str_3 = String(28)          // Converting integer to string

var c:Float = 2.3               // Float type variable
var d:Double = 12.9             // Double type variable
var e:Bool = true               // Boolean type variable

print(Int(c))                   // Convverts float to integer
print(Int(d))                   // Converts double to integer
```


## if Statement
Comparsion operators:

* Equal to (a == b)
* Not equal to (a != b)
* Greater than (a > b)
* Less than (a < b)
* Greater than or equal to (a >= b)
* Less than or equal to (a <= b)

Logical operators:

*  Logical NOT (!a)
*  Logical AND (a && b)
*  Logical OR (a || b)

Conditional programming: if, else if, else
```
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
```

Example 2
```
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
```

Not equal (!)
```
var first = 3
var second = 5

if first != second {
    print("first does'nt equal second")
}
```

```
    temperatureInFahrenheit = 90
    if temperatureInFahrenheit <= 32 {
        print("It's very cold. Consider wearing a scarf.")
    } else if temperatureInFahrenheit >= 86 {
        print("It's really warm. Don't forget to wear sunscreen.")
    } else {
        print("It's not that cold. Wear a t-shirt.")
    }
    // Prints "It's really warm. Don't forget to wear sunscreen."
```


## Switch statements
Switch statements let make decisions with your code
```
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"
```

```
var someCharacter:Character = "c"

switch someCharacter {
    case "a":
        print("is an A")
    case "b", "c":                  // "b" OR "c"
        print("is a B or C")
    default:
        print("some fallback")
}
```


## Loops
To use when needed repeat pieces of code

For loop
```
for index in 1...15 {
    print("hello")          // Will be printed 15 times
    print(index)            // Will print numbers 1-15
}

for index in 1...5 {
    var sum = 0
    sum += index
    print(sum)              // prints out numbers 1-5
}
```

While loop repeats code while set condition is true
```
var counter = 5 

while counter > 0 {
    print("hello")          // Will ptint hello 5 times
    counter -= 1
}
```

Repeat-While loop - condition is at the end of loop
```
var counter_2 = -5

repeat {
    print("hello")       // Will print hello 1 time
    counter = counter - 1
} while counter_2 >
```


## Functions
https://docs.swift.org/swift-book/LanguageGuide/Functions.html
**func** - keyword to declare function
```
func addTwoNumbers(){
    let a = 1
    let b = 2
    let c = a + b

    print(c)                // prints out 3
}

addTwoNumbers()             // calling a function
```

Function with return value
```
func addNumbers() -> Int {  // -> Int - return type
    let a = 1
    let b = 1
    let c = a + b

    return c
}

let sum = addNumbers()       // assigning functions value to variable 'sum'

print(sum)
```

Function with 2 arguments(with argument name and parameter name)
```
func addTwoNumbers(using number1:Int, and number2:Int) -> Int {     // add two numbers using number1 and number2
    let a = number1
    let b = number2

    return a + b
}

let sum_2 = addTwoNumbers(using:2, and:2)

print(sum_2)
```

Function with only parameter name
```
func addMyNumbers(number1:Int, number2:Int) -> Int {
    let a = number1
    let b = number2

    return a + b
}

let sum_2 = addMyNumbers(number1:2, number2:2)

print(sum_2)
```

## Classes
https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html
```
class BlogPost {

    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0

    func addComment(){
        numberOfComments += 1
    }
}

let myPost = BlogPost()
myPost.title = "Hello Playground"
myPost.author = "Chris Ching"
myPost.body = "Hello"
myPost.addComment()
print(myPost.numberOfComments)          // print out 1

let mySecondPost = BlogPost()
mySecondPost.title = "Goodbye Playground"
mySecondPost.author = "John Travolta"
mySecondPost.body = "Hello"
print(mySecondPost.numberOfComments)    // print out 0
```

## Inheritance
https://docs.swift.org/swift-book/LanguageGuide/Inheritance.html
```
class Car {
    var topSpeed = 200

    func drive() {
        print("Driving at  \(topSpeed)")
    }
}

class Futurecar: Car {          // Inheriting from Car class

    override func drive(){      // Overriding drive method

        super.drive()           // Calls the parent class method
        print("Driving at \(topSpeed + 50)")
    }

    func fly() {
        print("Flying")
    }
}

let myRide = Car()
myRide.topSpeed
myRide.drive()

let myNewRide = Futurecar()
myNewRide.topSpeed
myNewRide.drive()
myNewRide.fly()
```


<p align="center"><img src="uikit.jpg" width="250px"></p>

## UIKit
https://developer.apple.com/documentation/uikit
Construct and manage a graphical, event-driven user interface for your iOS or tvOS app. 
The UIKit framework provides the required infrastructure for your iOS or tvOS apps. It provides the window and view architecture for implementing your interface, the event handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop needed to manage interactions among the user, the system, and your app. Other features offered by the framework include animation support, document support, drawing and printing support, information about the current device, text management and display, search support, accessibility support, app extension support, and resource management.


## Initializers
Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that’s required before the new instance is ready for use.

You implement this initialization process by defining initializers, which are like special methods that can be called to create a new instance of a particular type. Unlike Objective-C initializers, Swift initializers don’t return a value. Their primary role is to ensure that new instances of a type are correctly initialized before they’re used for the first time.

Instances of class types can also implement a deinitializer, which performs any custom cleanup just before an instance of that class is deallocated. For more information about deinitializers, see Deinitialization.

*Initializers* are called to create a new instance of a particular type. In its simplest form, an initializer is like an instance method with no parameters, written using the *init* keyword:
```
init() {
    // perform some initialization here
}

```

The self Property

Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.

The increment() method in the example above could have been written like this:
```
func increment() {
    self.count += 1
}
```

```
class Person{                   // Person class

    var name = ""               // declaring two Properties of class
    var age = 0

    init(){

    }

    init(name:String, age:Int){ // method in Person

        self.name = name        // setting values to properties
        self.age = age
    }
}

var a = Person(name:"Chris", age:33) // new Person object
var b = Person()
print(a.age)                    // prints out 33
print(b.age)                    // prints out 0
```

Designated- and Convenient Initializers
```
class Person {

    var name = ""
}

class BlogPost {

    var title:String!
    var body = "hey"
    var author:Person?
    var numberOfComments = 0

    init(){                                     // designated initializer
        title = "My Title"
        author = Person()
    }

    convenience init(customTitle:String){       // convenience initializer
        self.init()
        title = customTitle
    }
}

let post = BlogPost(customTitle: "A Custom Title")

// Check if there's a value inside the optional first
if let actualTitle = post.title{

}
```

## Optionals
1. Optionals can be nil or have a value
2. You need to unwrap optionals to safely use them

**?** - for declaring optional\
**!** - for testing optional

```
class Person{
    
    var name = ""
}

class BlogPost{
    
    var title:String?               // optional
    var body = "hey"
    var author:Person?              // optional
    var numberOfComments = 0
}

let post = BlogPost()

print(post.body + " hello!")        // prints out: 'hey hello!'

// Optional Binding / unwrapping optional
post.title = "yo"
if let actualTitle = post.title{    // if post has title then assigne it to 'actualTitle'
    print(actualTitle + " salut")   // using optional, prints out: 'yo salut'
}

// forcing to unwrap optional
print(post.title! + " salut")       // can cause error, if there is no value

// Testing for nil
if post.title != nil {          
    // Optional contains value     
    print(post.title! + " salut")
}
if post.title == nil {
    // Optional contains no value
}
```


## Properties
https://docs.swift.org/swift-book/LanguageGuide/Properties.html

*Properties* associate values with a particular class, structure, or enumeration. Stored properties store constant and variable values as part of an instance, whereas computed properties calculate (rather than store) a value. Computed properties are provided by classes, structures, and enumerations. Stored properties are provided only by classes and structures.

```
class Person {

    var name = ""
}

class BlogPost {

    var fullTitle:String{               // computed property
        // Check that title and author are not nil
        if title != nil && author != nil{
            return title! + " by " + author!.name
        }else if title != nil{
            return title!
        }else{
            return "No Title"
        }
    }

    var title:String?
    var body = "hey"
    var author:Person?
    var numberOfComments = 0

    func addUpCommentCounts(){

        // Do some calculations
        // Arrive at a result

    }

    func addComment(){

        //var myComment = "Some comment"      // variable declared inside function can be accessed only in that function

        print(body)
    }

    func shareArticle(){

        print(body)

    }
}

// properties are variables that are assigned to an object
let myPost = BlogPost()
myPost.title = "Title of post"  

let myPostTwo = BlogPost()
myPostTwo.title = "Another Title"

// computed properties
let author = Person()
author.name = "Chris Ching"

let myPost_2 = BlogPost()
myPost_2.author = author
myPost_2.title = "Learn Swift for Beginners"

print(myPost_2.fullTitle)
```

<p align="center"><img src="collections.png" width="250px"></p>

<h2 align="center">
    <strong>Collections</strong>
</h2>
https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html

## Array
An array stores values of the same type in an ordered list. The same value can appear in an array multiple times at different positions.
```
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
```

## Set
A *set* stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items isn’t important, or when you need to ensure that an item only appears once.

## Dictionary
A *dictionary* stores associations between keys of the same type and values of the same type in a collection with no defined ordering. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary don’t have a specified order. You use a dictionary when you need to look up values based on their identifier, in much the same way that a real-world dictionary is used to look up the definition for a particular word.

```
var carDB = Dictionary<String, String>()    // Declaring new string dictionary

// other way to declare same type of dictionary:
var carDB2 = [String:String]()

carDB2["JSD 238"] = "Blue Ferrari"          // adding key value pair
carDB2["SID 482"] = "Green Lamborghini"
carDB2["NAR 182"] = "Yellow Maserati"

print(carDB2["JSD 238"]!)                   // printout 'Blue Ferrari'

carDB2["JSD 238"] = "Red Ferrari"           // updating value for key

carDB2["JSD 238"] = nil                     // removing key value pair

// Iterate over dictionary
for(licence, car) in carDB2{                // 'licence, car' - tuple
    print("\(car) as licence: \(licence)")
}
```
