//: Playground - noun: a place where people can play

import UIKit

// add

var firstInt: Int? = 2
var secondInt: Int? = 5

func optAdd1(arg1: Int?, arg2: Int?) -> Int? {
    if let first = arg1 {
        if let second = arg2 {
            return first + second
        }
    }
    return nil
}
optAdd1(firstInt, secondInt)
//
//// optAdd1 takes two optionals as input parameters, and returns an optional. It then uses the “if let” statement to bind the inputs, and only adds the two numbers together when we are sure they are non-nil.
//
//// multiplication, using the same code:
//
func optMultiply1(arg1: Int?, arg2: Int?) -> Int? {
    if let first = arg1 {
        if let second = arg2 {
            return first * second
        }
    }
    return nil
}
optMultiply1(firstInt, secondInt)

//we could just write a function that takes THREE parameters we could prevent duplication of a ton of code.
//Our new function, which I’ll call optionalMap, will take two optional integers as parameters, just like the other functions we created. But it will also take a third parameter, namely the FUNCTION that we want to perform on the first two parameters. As long as the function that we pass in takes two integers as parameters and returns another integer, optionalMap will work on it.

func optionalMath(arg1: Int?, arg2: Int?, myFunc: (Int, Int) -> Int?) -> Int? {
    if let first = arg1 {
        if let second = arg2 {
            return myFunc(first, second)
        }
    }
    return nil
}
//myFunc(firstInt, secondInt)

//optionalMath(firstInt, secondInt, myFunc)

//optionalMath(firstInt, secondInt, { (+)($0) })
//optionalMath(firstInt, secondInt, { (*)($0) })
//
