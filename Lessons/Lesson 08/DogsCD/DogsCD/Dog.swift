//
//  Dog.swift
//  DogsCD
//
//  Created by Monica on 5/14/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import Foundation

class Dog {
    var name: String
    init(name:String) {
        self.name = name
    }
    func bark() -> String {
        return "\(self.name) says woof!!"
    }
}

