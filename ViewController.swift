//
//  ViewController.swift
//  Tableview Project
//
//  Created by Apple on 31/10/17.
//  Copyright © 2017 Apple. All rights reserved.
//  Going to use git by Xcode.

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var buy:[Shopnow] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        buy = buystuff()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let stuff = buy[indexPath.row]
        cell.textLabel?.text = stuff.product
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let stuff = buy[indexPath.row]
        
        performSegue(withIdentifier: "segueOne", sender: stuff)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secVC = segue.destination as! SecondViewController
        
        secVC.newbuy = sender as! Shopnow
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buystuff() -> [Shopnow]{
        
        let product1 = Shopnow()
        product1.product = "👕"
        product1.prodName = "Zara Shirt"
        product1.manfyear = 2017
        product1.categ = "Men"
        
        let product2 = Shopnow()
        product2.product = "👖"
        product2.prodName = "Zara jeans"
        product2.manfyear = 2017
        product2.categ = "Men"
        
        let product3 = Shopnow()
        product3.product = "👗"
        product3.prodName = "Zara Frock"
        product3.manfyear = 2017
        product3.categ = "Women"
        
        let product4 = Shopnow()
        product4.product = "👠"
        product4.prodName = "Zara High Heal"
        product4.manfyear = 2017
        product4.categ = "Women"
        
        let product5 = Shopnow()
        product5.product = "👞"
        product5.prodName = "Hushpuppies Shoe"
        product5.manfyear = 2017
        product5.categ = "Men"
        
        let product6 = Shopnow()
        product6.product = "🕶"
        product6.prodName = "Rayban Sunglass"
        product6.manfyear = 2017
        product6.categ = "Unisex"
        
        let product7 = Shopnow()
        product7.product = "👜"
        product7.prodName = "Fossil Handbag"
        product7.manfyear = 2017
        product7.categ = "Women"
        
        let product8 = Shopnow()
        product8.product = "💼"
        product8.prodName = "Fossil Office Bag"
        product8.manfyear = 2017
        product8.categ = "Men"
        
        let product9 = Shopnow()
        product9.product = "👓"
        product9.prodName = "Lenskart Glasses"
        product9.manfyear = 2016
        product9.categ = "Men"
        
        let product10 = Shopnow()
        product10.product = "👡"
        product10.prodName = "Lifestyle Snadle"
        product10.manfyear = 2017
        product10.categ = "Women"
        
        let product11 = Shopnow()
        product11.product = "👔"
        product11.prodName = "Calvin Kelin"
        product11.manfyear = 2017
        product11.categ = "Men"
        
        let product12 = Shopnow()
        product12.product = "🎒"
        product12.prodName = "Zara Red Bag"
        product12.manfyear = 2017
        product12.categ = "Unisex"
        
        let product13 = Shopnow()
        product13.product = "👟"
        product13.prodName = "Nike Sneeker"
        product13.manfyear = 2017
        product13.categ = "Men"
        
        let product14 = Shopnow()
        product14.product = "👚"
        product14.prodName = "Polo Womens Tshirt"
        product14.manfyear = 2017
        product14.categ = "Women"
        
        return   [product1,product2,product3,product4,product5,product6,product7,product8,product9,product10,product11,product12,product13,product14]
        
        
    }
}

