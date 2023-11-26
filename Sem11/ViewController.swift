//
//  ViewController.swift
//  Sem11
//
//  Created by krlos90 on 25/11/23.
//

import UIKit

class ViewController: UIViewController {

    var paisSeleccionado : Pais? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let pais = paisSeleccionado {
            print("ES PORQUE SELECCIONARON UN ELEMENTO EN LA TABLA")
        } else {
            print("AREGAR NUEVO ELEMENTO")
        }		
    }

 
    
}

