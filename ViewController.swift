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
    
    var buy = ["👕","👖","👗","👠","👞","🕶","👜","💼","👓","👡","👔","👛","🎒","👟","👚","👝",]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return buy.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = buy[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       tableView.deselectRow(at: indexPath, animated: true)
        let stuff = buy[indexPath.row]
        
        performSegue(withIdentifier: "segueOne", sender: stuff)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let secVC = segue.destination as! SecondViewController
        
        secVC.newbuy = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

