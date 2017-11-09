//
//  SecondViewController.swift
//  Tableview Project
//
//  Created by Apple on 02/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var cateGoryLabel: UILabel!
    @IBOutlet weak var manFacLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    
    var newbuy = Shopnow()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secLabel.text = newbuy.product
        descLabel.text = "\(newbuy.prodName)"
        manFacLabel.text = "Manf.Year: \(newbuy.manfyear)"
        cateGoryLabel.text = "Categ: \(newbuy.categ)"
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
