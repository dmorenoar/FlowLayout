//
//  Categoria.swift
//  TableViewExample
//
//  Created by dmorenoar on 18/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import Foundation
import UIKit

class Categoria {
    var lblCategoria:String
    var imagenCategoria:UIImage = UIImage()
    
    init(lblCategoria:String, imagenCategoria:UIImage) {
        self.lblCategoria = lblCategoria
        self.imagenCategoria = imagenCategoria
    }
    
    
}
