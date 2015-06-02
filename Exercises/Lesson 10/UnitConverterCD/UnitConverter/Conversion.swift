//
//  Conversion.swift
//  UnitConverter
//
//  Created by Monica on 5/21/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import Foundation

class Conversion {
        var imperialUnits: String = ""
        var metricUnits: String = ""
        var mileUnits: String = ""
        var kilometerUnits: String = ""
    
    init() {

    }
    
    func convert(imperial: Double) -> Double {
        return 0.0
    }
}

class FahrenheitToCelsius: Conversion {
    override init() {
        super.init()
        self.imperialUnits = "F"
        self.metricUnits = "C"
    }
    override func convert(imperial: Double) -> Double {
       let F = imperial
        let C = 5.0*(F - 32.0)/9.0
        return C
    }
}

class MilesToKilometers: Conversion {
    // Put your conversion here!
    

        
    }
    override init() {
        super.init()
        self.mileUnits = "M"
        self.kilometerUnits = "K"
    }
    override func convert(imperial: Double) -> Double {
    let M = mile
    let K = 1.6*M
    return K
}