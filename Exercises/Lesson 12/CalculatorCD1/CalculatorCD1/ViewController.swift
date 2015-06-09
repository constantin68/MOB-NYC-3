//
//  ViewController.swift
//  CalculatorCD1
//
//  Created by Monica on 5/28/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var operand1: Float = 0
    var operation: String?
    var operand2: Float?
    var firstNumber: String?

    var digitTapped: String = ""
    @IBOutlet var inputLabel: UILabel!
    
    
    @IBAction func pressedDecimal(sender: UIButton) {
        // check to see if current string has decimals
        var firstNumber: String = self.inputLabel.text!
        if firstNumber.rangeOfString(".") == nil {
            self.inputLabel.text = inputLabel.text! + "."
        }
    }
    
    @IBAction func pressedNegation(sender: UIButton) {
        var firstNumber: String = self.inputLabel.text!
        let firstChar = firstNumber [firstNumber.startIndex]
        if firstChar == "-" {
            // remove negation
            self.inputLabel.text = dropFirst(firstNumber)
        } else {
            // add the negation
            self.inputLabel.text = "-" + firstNumber
        }
    }
    
    func updateOperand() {
        var firstNumber: String = self.inputLabel.text!
        if self.operation == nil{
            self.operand1 = (firstNumber as NSString).floatValue
        } else {
            self.operand2 = (firstNumber as NSString).floatValue
        }
        println("Operand 1: \(self.operand1)")
        println("Operand 2: \(self.operand2)")
        println("firstNumber: \(self.firstNumber)")
    }
    
    @IBAction func pressedOperation(button: UIButton) {
        self.operation = button.titleLabel!.text!
    }
    
    @IBAction func pressedClear(sender: UIButton) {
        self.inputLabel.text = "0"
        updateOperand()
    }
   
    @IBAction func pressedClearAll(sender: UIButton) {
        self.inputLabel.text = "0"
        self.operation = nil
        self.operand2 = nil
        updateOperand()
    }
    func userInputDigit(digit: Int) {
        var firstNumber: String = self.inputLabel.text!
        
        if self.operation != nil && self.operand2 == nil {
            inputLabel.text = "0"
        }
        if firstNumber == "0" {
            self.inputLabel.text = "\(digit)"
        } else {
            self.inputLabel.text = firstNumber + "\(digit)"
        }        // eliminate 0 and add the next pressed button to the end of the string on the inputLabel
        updateOperand()
    }
 
    
    @IBAction func on7Tapped(sender: UIButton) {
        userInputDigit(7)
    }
    
    @IBAction func on8Tapped(sender: UIButton) {
        userInputDigit(8)
    }
    
    @IBAction func on9Tapped(sender: UIButton) {
        userInputDigit(9)
    }
    
    @IBAction func on4Tapped(sender: UIButton) {
        userInputDigit(4)
    }
    
    @IBAction func on5Tapped(sender: UIButton) {
        userInputDigit(5)
    }
    
    @IBAction func on6Tapped(sender: UIButton) {
        userInputDigit(6)
    }
    
    @IBAction func on1Tapped(sender: UIButton) {
        userInputDigit(1)
    }
    
    @IBAction func on2Tapped(sender: UIButton) {
        userInputDigit(2)
    }
    
    @IBAction func on3Tapped(sender: UIButton) {
        userInputDigit(3)
    }
    
    @IBAction func on0Tapped(sender: UIButton) {
        userInputDigit(0)
    }
    
    @IBAction func pressedEqual(sender: UIButton) {
        
        if let operation = self.operation {
            //do math
            println(operation)
            var result:Float = 0
            switch operation {
            case "+":
                //add
                result = self.operand1 + self.operand2!
                
            case "-":
                //subtraction
                result = self.operand1 - self.operand2!
                
            case "/":
                //division
                result = self.operand1 / self.operand2!
                
            case "x":
                //multiply
                result = self.operand1 * self.operand2!
                
            default:
                result = 0
            }
            
            self.inputLabel.text! = "\(result)"
        }
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

