//
//  CollectionViewCell_Galeri.swift
//  CityGuide
//
//  Created by Beyza Arslan on 10.09.2021.
//

import UIKit

class CollectionViewCell_Galeri: UICollectionViewCell {

    @IBOutlet weak var imageGaleri: UIImageView!
    @IBOutlet weak var lblGaleri: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageGaleri.layer.cornerRadius = 10
    }

}
