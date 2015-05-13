//
//  SumViewController.swift
//  TwoScreens
//
//  Created by Monica on 5/12/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import Foundation

import UIKit

class SumViewController: UIViewController {
 
    @IBOutlet var firstText: UITextField!
    
    @IBOutlet var secondText: UITextField!
 
    @IBOutlet var secondLabel: UILabel!
    
    @IBAction func secondButton(sender: AnyObject) {
        secondLabel.text = (NSString(string: firstText.text).doubleValue + NSString(string: secondText.text).doubleValue).description
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

//let numberASString = "3.14"
//// How to convert this into a Double??
//let double = NSString(string: numberASString).doubleValue
