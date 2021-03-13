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