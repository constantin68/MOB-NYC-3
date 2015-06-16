//
//  ViewController.swift
//  PersistAssignment
//
//  Created by Monica on 6/9/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onSaveTapped(sender: UIBarButtonItem) {
            self.saveInDefaults()
    }
    
    @IBOutlet var myTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
            self.loadFromDefaults()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var textView: UITextView!

    let defaultsMgr = NSUserDefaults.standardUserDefaults()
    
    func saveInDefaults() {
        let text = self.myTextView.text
        self.defaultsMgr.setValue(text, forKey:"userText")
    }
    
    func loadFromDefaults() {
        if let savedText = self.defaultsMgr.valueForKey("userText") as? [String] {
            self.myTextView.text = savedText
        }
}