//
//  TableViewCell.swift
//  Raj_tableviewwithcell
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellPrice: UILabel!

//    var name:String = ""
//    var price:String = ""
//    var Image:UIImage?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        cellName.text = name
//        cellPrice.text = price
//        cellImage.image = Image
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected stat
    }

}
