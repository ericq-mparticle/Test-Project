//
//  ViewController.swift
//  Test Project
//
//  Created by Eric Quinones on 7/14/16.
//  Copyright © 2016 Eric Quinones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedShowAlert(sender: UIButton) {
        let alert = UIAlertController(title: "Annoying Alert", message: "Hey... you asked for it!", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Go Away", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

