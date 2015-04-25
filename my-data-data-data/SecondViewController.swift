//
//  SecondViewController.swift
//  my-data-data-data
//
//  Created by Kevin Bluer on 4/25/15.
//  Copyright (c) 2015 Bluer Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var switchSomething: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonSaveName(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject(txtName.text, forKey:"Name")
        
        NSUserDefaults.standardUserDefaults().setObject(switchSomething.on, forKey:"Switch")
        
    }

    @IBAction func switchChanged(sender: AnyObject) {
        
        println(switchSomething.on)
    }
}

