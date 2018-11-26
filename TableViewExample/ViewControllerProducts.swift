//
//  ViewControllerProducts.swift
//  TableViewExample
//
//  Created by dmorenoar on 17/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewControllerProducts: UIViewController {

    @IBOutlet weak var lblCategoria: UILabel!
    
    
    var categoria = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Se carga con el performsegue
        lblCategoria.text = categoria

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
