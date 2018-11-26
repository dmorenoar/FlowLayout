//
//  TableViewCellPersonalizada.swift
//  TableViewExample
//
//  Created by dmorenoar on 18/11/18.
//  Copyright © 2018 dmorenoar. All rights reserved.
//

import UIKit

class TableViewCellPersonalizada: UITableViewCell {

    @IBOutlet weak var imgCategoria: UIImageView!
    
    @IBOutlet weak var lblCategoria: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
