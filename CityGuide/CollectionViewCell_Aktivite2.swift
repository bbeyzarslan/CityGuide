//
//  CollectionViewCell_Aktivite2.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit

class CollectionViewCell_Aktivite2: UICollectionViewCell {

    @IBOutlet weak var viewAktivite: UIView!
    @IBOutlet weak var imageAktivite: UIImageView!
    @IBOutlet weak var lblBaslik: UILabel!
    @IBOutlet weak var lblFiyat: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
     /*   self.viewAktivite.layer.cornerRadius = 10
        self.viewAktivite.layer.shadowColor = UIColor.black.cgColor
        self.viewAktivite.layer.shadowOpacity = 1
        self.viewAktivite.layer.shadowRadius = */
        
        self.viewAktivite.layer.masksToBounds = true
        self.viewAktivite.layer.cornerRadius = 10.0
        self.viewAktivite.layer.borderWidth = 0.5
        self.viewAktivite.layer.borderColor = UIColor.lightGray.cgColor

        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 2.0, height: 0.0)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 1.0

        
        
    }

}
