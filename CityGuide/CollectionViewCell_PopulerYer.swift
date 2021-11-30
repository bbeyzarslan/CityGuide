//
//  CollectionViewCell_PopulerYer.swift
//  CityGuide
//
//  Created by Beyza Arslan on 3.09.2021.
//

import UIKit

protocol CollectionViewCell_PopulerYerDelegate {
    func didFavoriteTapped(mekan: Mekan)
}

class CollectionViewCell_PopulerYer: UICollectionViewCell {

    @IBOutlet weak var imagePopulerYer: UIImageView!
    @IBOutlet weak var lblBaslik: UILabel!
    @IBOutlet weak var lblAciklama: UILabel!
    
    @IBOutlet weak var btnFavori: UIButton!
    
    var buttonIsSelected = false
    var delegate: CollectionViewCell_PopulerYerDelegate?
    var mekan : Mekan?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imagePopulerYer.layer.cornerRadius = 10
        btnFavori.tintColor = .red
    
        btnFavori.setImage(UIImage(systemName: "heart"), for: .normal)
        btnFavori.setImage(UIImage(systemName: "heart.fill"), for: .selected)

    }
    
    @IBAction func btnFavori_TUI(_ sender: Any) {
            
            btnFavori.isSelected = !btnFavori.isSelected
            if let delegate = self.delegate {
                delegate.didFavoriteTapped(mekan: self.mekan!)
            }
        
    }
}
