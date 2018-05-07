//
//  AnotherViewController.swift
//  Q10
//
//  Created by Cheeja on 5/7/18.
//  Copyright © 2018 Cheeja. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {
    
    var str: String?
    
    @IBOutlet weak var lblDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if str != nil {
            lblDate.text = str
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
