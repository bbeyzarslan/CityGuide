//
//  CollectionViewCell_GidYerler.swift
//  CityGuide
//
//  Created by Beyza Arslan on 24.08.2021.
//

import UIKit

class CollectionViewCell_GidYerler: UICollectionViewCell {

    @IBOutlet weak var imageYer: UIImageView!
    @IBOutlet weak var lblYer: UILabel!
    
    var ozellikListesi = [ozellik]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageYer.layer.cornerRadius = 10
    }
    
    func setCornerRadius() {
        imageYer.layer.cornerRadius = 10
    }

}
