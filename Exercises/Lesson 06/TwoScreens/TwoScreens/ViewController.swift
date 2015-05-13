//
//  ViewController.swift
//  TwoScreens
//
//  Created by Monica on 5/12/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var textOutlet: UITextField!
    
    @IBOutlet var newLabel: UILabel!
    
    @IBAction func newButton(sender: UIButton) {
    newLabel.text = "hello \(textOutlet.text)!"
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

