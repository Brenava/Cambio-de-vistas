//
//  ViewController.swift
//  Proyecto 28-08-2019
//
//  Created by 2020-1 on 8/28/19.
//  Copyright © 2019 Bren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var jerry = Alumno(nombre: "Jerry")
    var JulioMalo = Profesor(nombre: "JulioMalo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Vista dos fuera...")
        print(JulioMalo.nombre)
        print(jerry.nombre)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondView = segue.destination as!SecondViewController
        secondView.dato = "Hola mundo desde vista 1"
        secondView.jerryVistaUno = jerry
        secondView.profesorVistaUno = JulioMalo
        secondView.vista1 = self
    }


}

