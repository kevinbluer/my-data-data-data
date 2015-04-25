//
//  ThirdViewController.swift
//  my-data-data-data
//
//  Created by Kevin Bluer on 4/25/15.
//  Copyright (c) 2015 Bluer Inc. All rights reserved.
//

import UIKit
import Parse

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonParseLocal(sender: AnyObject) {
        
        var query = PFQuery(className:"Something")
        query.fromLocalDatastore()
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                println("Successfully retrieved \(objects!.count) objects.")
                // Do something with the found objects
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        println(object["else"]!)
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error!) \(error!.userInfo!)")
            }
        }
        
    }
    
}

