//
//  ViewController.swift
//  CalculatorCD1
//
//  Created by Monica on 5/28/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    var digitTapped: String = ""
    
    
    
    func userInputDigit(digit: Int) {
        
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
    
    @IBAction func on1Tapped(sender: AnyObject) {
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
    
    
    @IBOutlet var inputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

