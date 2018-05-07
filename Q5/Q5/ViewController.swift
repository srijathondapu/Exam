//
//  ViewController.swift
//  Q5
//
//  Created by Cheeja on 5/7/18.
//  Copyright © 2018 Cheeja. All rights reserved.
//

import UIKit

var titles = ["Domestic Animals", "Wild Animals"]
var animals = [["Cat", "Dog", "Goat", "Horse", "Sheep"], ["Elephant", "Lion", "Tiger", "Zebra"]]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicIdentifier")
        cell?.textLabel?.text = animals[indexPath.section][indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sectionNo = indexPath.section
        let sectionRow = IndexPath(index: indexPath.row)
        var rowNo = 0
        for i in sectionRow{
            rowNo = i
        }
        
        let alert = UIAlertController(title: "Section and Row Details", message: "Section \(sectionNo) and Row \(rowNo)", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default)
        { (action) in
            alert.dismiss(animated: true, completion: nil)
        }
        alert.addAction(actionOk)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

