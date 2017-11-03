//
//  SecondViewController.swift
//  Tableview Project
//
//  Created by Apple on 02/11/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var secLabel: UILabel!
    
    var newbuy = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secLabel.text = newbuy
        
        if newbuy == "👕" {
            descLabel.text = "Zara Shirt"
        }
        if newbuy == "👖" {
            descLabel.text = "Zara Jeans"
        }
        if newbuy == "👗" {
            descLabel.text = "Zara Frock"
        }
        if newbuy == "👠" {
            descLabel.text = "Zara High Heel"
        }
        if newbuy == "👞" {
            descLabel.text = "Zara Boot"
        }
        if newbuy == "🕶" {
            descLabel.text = "Rayban Sunglass"
        }
        if newbuy == "👜" {
            descLabel.text = "Fossil Handbag"
        }
        if newbuy == "💼" {
            descLabel.text = "Fossil Office Bag"
        }
        if newbuy == "👓" {
            descLabel.text = "Lanskart Glasses"
        }
        if newbuy == "👡" {
            descLabel.text = "Lifestyle sandle"
        }
        if newbuy == "👔" {
            descLabel.text = "Calvin Kelin Shirt"
        }
        if newbuy == "👛" {
            descLabel.text = "Gulachi Womens wallet"
        }
        if newbuy == "🎒" {
            descLabel.text = "Zara Red Bag"
        }
        if newbuy == "👟" {
            descLabel.text = "Nike Sneeker"
        }
        if newbuy == "👚" {
            descLabel.text = "Polo Womens Tshirt"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
