//
//  SecondViewController.swift
//  Tableview Project
//
//  Created by Apple on 02/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secLabel: UILabel!
    
    var newbuy = "new"
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        secLabel.text = newbuy
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
