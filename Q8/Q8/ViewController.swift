//
//  ViewController.swift
//  Q8
//
//  Created by Cheeja on 5/7/18.
//  Copyright © 2018 Cheeja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnPresent(_ sender: UIBarButtonItem) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController {
            navigationController?.present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnPush(_ sender: UIBarButtonItem) {
        if let controller = storyboard?.instantiateViewController(withIdentifier: "AnotherViewController") as? AnotherViewController {
            navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

