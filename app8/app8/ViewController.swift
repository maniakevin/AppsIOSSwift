//
//  ViewController.swift
//  app8
//
//  Created by ISSC612 on 26/02/20.
//  Copyright © 2020 ISSC612. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var imagineView: UIImageView!
    @IBAction func onCamara(_ sender: UIBarButtonItem) {
        let imagePicker = UIImagePickerController()
        present(imagePicker, animated: true, completion: nil)
        imagePicker.delegate = self
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagineView.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        dismiss(animated: true, completion: nil)
        textView1.text = "ERA YO DIO!!"
    }


}

