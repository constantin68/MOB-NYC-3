//
//  ViewController.swift
//  DismissModal
//
//  Created by Monica on 5/14/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBAction func onDismissTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
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

