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