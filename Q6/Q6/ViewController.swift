//
//  ViewController.swift
//  Q6
//
//  Created by Cheeja on 5/7/18.
//  Copyright © 2018 Cheeja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()

    @IBOutlet weak var entireScreen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Image"
        imagePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        entireScreen.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

