//
//  ViewControllerCollectionViewScroll.swift
//  TableViewExample
//
//  Created by dmorenoar on 25/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class ViewControllerCollectionViewScroll: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
        
        collectionView.showsHorizontalScrollIndicator = false
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaCategorias.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCellPersonalizada
        
        myCell.imgCell.image = listaCategorias[indexPath.row].imagenCategoria
        myCell.catCell.text = listaCategorias[indexPath.row].lblCategoria
        
        return myCell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        /*
         let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
         
         layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
         /* layout.itemSize = CGSize(width: screenWidth/3, height: screenWidth/3)*/
         layout.minimumInteritemSpacing = 5
         layout.minimumLineSpacing = 5
         collectionView.collectionViewLayout = layout
         */
        
        
        let yourWidth = collectionView.bounds.width/2.0 - 25
        let yourHeight = yourWidth
        
        return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 20, left: 25, bottom: 0, right: 0)
        
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    

    
    
}
