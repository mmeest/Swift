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