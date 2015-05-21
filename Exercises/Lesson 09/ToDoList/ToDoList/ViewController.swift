//
//  ViewController.swift
//  ToDoList
//  Created by Monica on 5/19/15.
//  Copyright (c) 2015 Constantin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    var tasks = ["Buy iPad Pro", "AppleCare", "Sell my iPhone 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Remember the data
    func insertNewTasks(task: String) {
        self.tasks.append(task)
        
        // Update the Table View
        let indexPath = NSIndexPath(forRow: self.tasks.count - 1, inSection: 0)
        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "newTaskSegue" {
            let destination = segue.destinationViewController as! NewTaskViewController
            destination.MainViewController = self
        }
    }
    // Mark table view Methods
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
     return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // get the cell
        let cell = self.tableView.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as! UITableViewCell
        let task = self.tasks [indexPath.row]
        cell.textLabel!.text = task
        return cell
    }
}

