import Foundation

//explicit type, empty array
var arr: [String] = []

// implicit type, empty array
var arr1 = [String]()

//implicit type, non empty
var arr2 = ["hello", "doctor", "hello1"]

//selected element 0 - the first one
arr2[0]
arr2[1]

//error: out of bounds
//arr2[3]

//get the number of elements
count(arr2)

arr2.append("newName")
arr2

//concatenate two arrays
arr2 += ["continue"]
arr2 = arr2 + ["11", "12"]

//insert an element at the front of an array
arr2.insert("yesterday", atIndex: 0)

arr2

arr2[0] = "discovery"

arr2

//remove an element from an array
arr2.removeAtIndex(4)
arr2
arr2.removeAtIndex(3)
arr2


//iterate over arrays
var all = ""
for word in arr2 {
    all += word
}
all

var sum = 0
for (index, word) in enumerate(arr2) {
    sum += index
}
sum


//sorting using sort(). Works for basic types
arr2
sort(&arr2)
arr2

// better sorting
func alphabetical(a:String, b:String) -> Bool {
    return a < b
}
arr2

var numbers = [5, 4, 8, 9, 2]
func increasing(a:Int, b:Int) -> Bool {
    return a < b
}
numbers.sort(increasing)

class Dog {
    var name: String
    init(name:String) {
        self.name = name
    }
    func bark() -> String {
        return "\(self.name) says woof!!"
    }
}

var dogs: [Dog] = []

let myDog = Dog(name: "Corry")
dogs.append(myDog)
dogs

count(dogs)
dogs[0].name


// Dictionaries
//empty dictionary "from String to Double"
//type of the keys = String
//type of the values = Doubles
var constants:[String: Double] = [:]

constants["e"] = 2.71828
constants["pi"] = 3.14159
constants["c"] = 3333
constants
//you cannot order a dictionaries

constants["pi"]














