//
//  NewTaskViewController.swift
//  ToDoList
//
//  Created by Monica on 5/19/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit

class NewTaskViewController: UIViewController {
    
    var MainViewController: ViewController!
    
    @IBOutlet var newTaskTitle: UITextField!
    
    @IBAction func cancel() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        // Get the value from the text field
        let title = self.newTaskTitle.text
        // Add that value to the Table View
        self.MainViewController.insertNewTasks(title)
        // Dismiss the Modal View
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
