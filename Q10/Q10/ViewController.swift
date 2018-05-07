//
//  ViewController.swift
//  Q10
//
//  Created by Cheeja on 5/7/18.
//  Copyright © 2018 Cheeja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let date = Date()
    let formatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? AnotherViewController {
            formatter.dateStyle = .medium
            let result = formatter.string(from: date)
            controller.str = result
        }
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

