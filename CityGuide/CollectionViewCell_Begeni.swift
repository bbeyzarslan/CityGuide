//
//  CollectionViewCell_Begeni.swift
//  CityGuide
//
//  Created by Beyza Arslan on 18.09.2021.
//

import UIKit
import CoreData

protocol CollectionViewCell_BegeniDelegate {
    func didFavoriteTapped(mekan: Mekan)
    func yerBul(ozellikId: Int, yerId: Int) -> Begeniler?
}

class CollectionViewCell_Begeni: UICollectionViewCell {

    @IBOutlet weak var imageBegeni: UIImageView!
    @IBOutlet weak var baslikBegeni: UILabel!
    @IBOutlet weak var aciklamaBegeni: UILabel!
    @IBOutlet weak var favButton: UIButton!
    
    var delegate: CollectionViewCell_BegeniDelegate?

    var selectedOzellik : ozellik?
    var mekan : Mekan?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        favButton.tintColor = .red
        
    }
    
    func set(ozellik: ozellik?) {
        selectedOzellik = ozellik
        if let delegate = delegate, let mekan = mekan, let sOzellik = ozellik {
            mekan.begeni = delegate.yerBul(ozellikId: sOzellik.id, yerId: mekan.id)
        }
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        favButton.isSelected = !favButton.isSelected        
        if let delegate = self.delegate {
            delegate.didFavoriteTapped(mekan: self.mekan!)
        }
    }
    

}


