//
//  SecondViewController.swift
//  Proyecto 28-08-2019
//
//  Created by 2020-1 on 8/28/19.
//  Copyright © 2019 Bren. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //var dato: String! //vamos a usar un dato y lo obtendremos antes de usarlo
    var dato: String = "" //Inicializar la variable
    var jerryVistaUno: Alumno!
    var profesorVistaUno: Profesor!
    
    var vista1: ViewController! //Estoy mandoando la clase de vista 1 para poder modifocar datos
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        
      //  print(dato!) //desenvolvimiento forzado
        print(dato)
        print(jerryVistaUno.nombre)
        print(profesorVistaUno.nombre)
    }
    @IBAction func cerrar(_sender: UIButton){
        
        profesorVistaUno.nombre = "Julio"
        jerryVistaUno.nombre = "Gerardo"
        vista1.jerry.nombre = "Ger"
        
       /*Si presento una ventana con present, utilizo dismiss
 Si presente una ventana con pushViewController, utilizo popViewController*/
        
        //dismiss(animated: true, completion: nil) //cuando ya se habia ejecutado un present
        navigationController?.popViewController(animated: true)
        
        
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
