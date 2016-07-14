//
//  TodoSchedulingViewController.swift
//  Test Project
//
//  Created by Eric Quinones on 7/14/16.
//  Copyright © 2016 Eric Quinones. All rights reserved.
//

import UIKit

class TodoSchedulingViewController: UIViewController {
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var deadlinePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func savePressed(sender: UIButton) {
        let todoItem = TodoItem(deadline: deadlinePicker.date, title: titleField.text!, UUID: NSUUID().UUIDString)
        TodoList.sharedInstance.addItem(todoItem) // schedule a local notification to persist this item
        self.navigationController?.popToRootViewControllerAnimated(true) // return to list view
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
