//
//  AltaViewController.swift
//  practica1
//
//  Created by ISSC612 on 06/03/20.
//  Copyright © 2020 ISSC612. All rights reserved.
//

import UIKit

class AltaViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtDescipcionHD: UITextField!
    @IBOutlet weak var imagen: UIImageView!
    @IBAction func onSubirImagen(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        present(imagePicker, animated: true, completion: nil)
        imagePicker.delegate = self
        
    }
    @IBAction func onGuardar(_ sender: Any) {
        var nombre = txtNombre.text
        var descipcion = txtDescipcionHD.text
      
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagen.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage?
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
