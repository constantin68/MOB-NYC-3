//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

class Dog {
    var yearBorn: Int?
    var age: Int? {
        //Getter!
        //Used for the "object.prop" syntax
        
        get {
            if let _yearBorn = self.yearBorn {
                return 2015 - _yearBorn
            } else {
                //self.yearBorn was nil!
                return nil
            }
        }
        // Setter!
        //Used for the "object.prop = ..." syntax
        set (newAGe) {
            self.yearBorn = 2015 - newAge!
            self.updateAgeLabel()
        }
    }
    func 
}