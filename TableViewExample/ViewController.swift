//
//  ViewController.swift
//  TableViewExample
//
//  Created by dmorenoar on 18/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

var listaCategorias:[Categoria] = [Categoria(lblCategoria: "Higiene", imagenCategoria: UIImage(named: "higiene")!),Categoria(lblCategoria: "Alimentacion", imagenCategoria: UIImage(named: "alimentacion")!),Categoria(lblCategoria: "Electronica", imagenCategoria: UIImage(named: "electronica")!)]


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCategorias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let myCell = self.tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCellPersonalizada
        
        let myCell = self.tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellPersonalizada
        
        //myCell.imgCategoria.image = UIImage(named: "higiene")
        myCell.lblCategoria.text = listaCategorias[indexPath.row].lblCategoria
        myCell.imgCategoria.image = listaCategorias[indexPath.row].imagenCategoria
        
        return myCell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.reloadData()
        
        tableView.delegate = self
        tableView.dataSource = self
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if segue.identifier == "admin" {
            let view = segue.destination as! ViewControllerAdmin
            
        }else{
            
        let listaProductos = segue.destination as! ViewControllerProducts
        listaProductos.categoria = listaCategorias[(tableView.indexPathForSelectedRow?.row)!].lblCategoria
            
        }
    }

    
    
}

