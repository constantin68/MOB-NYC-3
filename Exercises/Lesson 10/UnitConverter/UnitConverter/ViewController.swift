//
//  ViewController.swift
//  UnitConverter
//
//  Created by Monica on 5/21/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var inputValue: String = ""
    
    @IBOutlet var inputValueLabel: UILabel!
    
    @IBOutlet var outputValueLabel: UILabel!
    
    @IBOutlet var inputUnits: UILabel!
    
    @IBOutlet var outputUnits: UILabel!
    
    @IBAction func onButtonPressed (sender: UIButton) {
        // Get the text label from the UIButton
        let buttonText = sender.titleLabel!.text!
//        println(buttonText)
        
        if buttonText == "C" {
            self.inputValue = ""
        } else {
            // Append the digit to the end of the input value
            self.inputValue += buttonText
        }
        println("inputValue = \(self.inputValue)")
        
//              println(self.inputValue)
        // if 0-9 or the dot:
            // Add it to the "input value"
        // if C: 
            //Clear the input value
        // Update ther input value's UILabel
        
        self.inputValueLabel.text = self.inputValue
    }
    func clearInputValue() {
        self.inputValue = ""
    }
    funct appendNewDigit(digit: String) {
    self.inputValue += digit
    }
    
    @IBAction func convertFtoC(sender: AnyObject) {
        self.convertAndDisplay(FahrenheitToCelsius)
        
        // Get the inputValue and convert to a Double
        let valueToConvert = NSString(string:self.inputValue).doubleValue
        println(valueToConvert)
        
        // Convert the input value (output value)
        let converter = FahrenheitToCelsius ()
        let outputValue = converter.convert(valueToConvert)
        println(outputValue)
        
        // Update the output value label
        self.outputValueLabel.text = "\(outputValue)"
        
        // Update the input and output units labels
    }

    @IBAction func convertMiToKm(sender: AnyObject) {
        self.convertAndDisplay(MilesToKilometers)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

