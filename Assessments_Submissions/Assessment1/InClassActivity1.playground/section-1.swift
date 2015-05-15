// Intro to Swift in class playground

import Foundation


// TO DO 1: Create two variables, name and age. Name is a string, age is an integer.

// TODO: Print "Hello {whatever the value of name is}, you are {whatever the value of age is} years old!"


// TODO: Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”

// TODO: Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.

// TO DO 2: Print the first fifty multiples of seven minus one (e.g. the first three multiples are 7, 14, 21. The first three multiples minus one are 6, 13, 20)

// TO DO 3: Create a constant called number

// TODO: Print whether the above number is even

// TO DO 4: Print out "Hello {whatever the value of name is}, your name is {however long the string name is} characters long!. Use countElements()

// TO DO 5: Print the sum of one hundred random numbers. Use rand() to generate random numbers.

// Bonus 1 TO DO: Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”.

// BONUS 2 TO DO: The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number. Print the 37th fibonacci number below

"pi is equal to \(3.1415)..."


//TO DO 1

var N = "Constantin"

var A = 18

var Drink = 21

var Vote = 18

var Drive = 16

A < Drink

println(N)

println("Hello " + N + ", you are \(A)" + " years old")

if A >= Drink {
 
    println("You can Drink, Vote and Drive! - Not at the same time!")
    
}

if A < Drink && A >= Vote {
    
    println("You can only Vote and Drive")
    
}

if A >= Drive && A < Vote {
    
    println("You can only Drive!")
    
}


//TO DO 2

var Sum = 0

while Sum < 50 {
    
    Sum += 1
    
}

println(Sum)

for (var x = 1; x < 50; x = x + 1) {
    
    println(x)
    
}


// TO DO 3

let number:Double = 5

var even = number / 2

if even % 2 == 0 {
    
    println(number)
    
}


// TO DO 4

var length = count(N)

let Name = "Constantin"

println("\(Name) " + "has \(count(Name))" + " letters!")

println(" \(count(Name)) ")

println("Hello " + "\(Name), your name is " + "\(count(Name))" + " characters long!")


//TO DO 5????

//random Sum of 100 numbers?
//var randomNumber = Int32.random(1, 100)

var Random1 = arc4random_uniform(100)


// Bonus TO DO 1

var Random = rand()

let toCheck = 100

println(toCheck)

for (var Random = 1; Random <= toCheck; Random++) {
    
    let Trei = 3
    
    if Random % Trei == 0 {
        
        println("Fizz")
        
    }
    
    let Cinci = 5
    
    if Random % Cinci == 0 {
        
        println("Buzz")
        
    }
    
    if Random % Trei == 0 && Random % Cinci == 0 {
        
        println("FizzBuzz")
        
    }
    
    println(Random)
    
}
