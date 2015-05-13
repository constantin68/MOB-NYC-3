//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
//define a function

import Foundation

func sayHello() {
    
    println("Hello")
    
}

// Call a function = tells Swift to execute the lines inside the block

//let isFriendly = true

//if isFriendly {
    
//    sayHello()

    
//}

*/

func sayHello (name:String) {
    
    println("Hello \(name)")
    
}

sayHello("Cory")

sayHello("Bubu")

// Different Strings

func say(greeting:String, name:String) {
    
    println("\(greeting)!!!!! \(name)")
    
}

say("Wassup", "Cory")
say("Bubu", "Cory")

// Function with Values

func add(firstNumber:Double, secondNumber:Double) -> Double {
    
    return firstNumber + secondNumber
    
}

add(1, 2)


add(5.2, 6.8)

var onePlusOne = add(1, 1)

var twoPlusTwo = add(2, 2)

onePlusOne

twoPlusTwo

onePlusOne + twoPlusTwo

/*

func addRandom(Numere)

*/

//let milesPerKilometers = 0.62
//
//var kilometers:Double = 5
//
//var miles:Double = milesPerKilometers*kilometers

let milesPerKilometer = 0.62
// if you define it outside the function, it will apply to all lines after it, including the func

func convertKToM(kilometers:Double) -> Double {


    var miles = milesPerKilometer * kilometers
    return miles
    
}

convertKToM(55)
convertKToM(8.033)

var numberOfCalls = 0

func convertToImperial(what:String, value:Double) -> Double {
    
    numberOfCalls += 1
    
    if what == "km" {
        
        return convertKToM(value)
        
    } else {
        
        return 0.0
    }
    
}

convertToImperial("km", 7.0)

numberOfCalls
