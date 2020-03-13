//
//  ViewController.swift
//  app1
//
//  Created by ISSC612 on 12/02/20.
//  Copyright © 2020 ISSC612. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var lblDato: UILabel!
    @IBAction func onAceptar(_ sender: Any) {
        lblDato.text = "Bienvenido a iOS";
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

