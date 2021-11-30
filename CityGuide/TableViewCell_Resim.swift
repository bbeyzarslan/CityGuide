//
//  TableViewCell_Resim.swift
//  CityGuide
//
//  Created by Beyza Arslan on 26.08.2021.
//

import UIKit

class TableViewCell_Resim: UITableViewCell {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var lblBaslik: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
