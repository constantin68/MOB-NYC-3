//: Playground - noun: a place where people can play

import UIKit

let welcome = "Hello world!"
for char in welcome {
    char
}

// if I want to get the 4th character

var i = advance(welcome.startIndex, 4)
let theO = welcome[i]
theO == "o"


func hasDecimal(str: String) -> Bool {
    let decimal = "."
    let decimalChar = decimal[decimal.startIndex]
    for char in str {
        if decimalChar == char {
            return true
        }
    }
    return false
}

hasDecimal("15.0")

// testing for inclusion in an NSString:

NSString(string: welcome).containsString("wo")

NSString(string: "15.0").containsString(".")

//

func isDouble(number: String) -> Bool {
    return NSString(string: number).containsString(".")
}
let myInputValue = "15"

if isDouble(myInputValue) {
    let number = NSString(string: myInputValue).doubleValue
    let negated = -number
    println(negated)
} else {
    let number = NSString(string: myInputValue).integerValue
    let negated = -number
    println(negated)
}


// Enumerations

enum ConversionMode {
    case ImperialToMetric
    case MetricToImperial
}

var currentMode: ConversionMode = .ImperialToMetric
currentMode == .ImperialToMetric
currentMode == .MetricToImperial

// it is exactly the same like below:

currentMode == ConversionMode.ImperialToMetric
currentMode == ConversionMode.MetricToImperial


enum Units {
    case Feet
    case Meters
    case Ounces
    case Grams
    case Miles
    case Kilometers
}

func isMetric(units: Units) -> Bool {
    switch units {
        case .Feet:
            return false
        case .Meters:
            return true
        default:
            return false
    }
}


// Tuples

var exampleTuple: (Double, Bool) = (12.0, false)
exampleTuple.0
exampleTuple.1

var unitsTuple: (units: Units, isMetric: Bool) = (units:.Feet, isMetric:false)

unitsTuple.units
unitsTuple.isMetric

func divide(x: Int, y: Int) -> (answer: Int, remainder: Int) {
    let answer = x / y
    let remainder = x % y
    return (answer: answer, remainder: remainder)
}

let sample = divide(100, 33)
sample.answer
sample.remainder
