//
//  CollectionViewCell_Aktivite.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit

class CollectionViewCell_Aktivite: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var cvAktivite: UICollectionView!
    
    var resim = ["img1.jpg", "img2.jpg", "img3.jpg", "img4.jpg"]
    var baslik = ["Boğazda Gün Batımı Gezisi", "Topkapı Sarayı ve Yeraltı Sarnıcı İçeren Küçük Grup Turu","Tarihi Yarımada Turu","Big Bus İstanbul Turu"]
    var fiyat = ["150 TL", "110 TL", "90 TL", "200 TL"]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cvAktivite.delegate = self
        cvAktivite.dataSource = self
        
        cvAktivite.register(UINib.init(nibName: "CollectionViewCell_Aktivite2", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_Aktivite2")
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
  
            let cell = cvAktivite.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_Aktivite2", for: indexPath) as? CollectionViewCell_Aktivite2
       
            DispatchQueue.global(qos: .background).async {
                let image = UIImage(named: self.resim[indexPath.row])
                DispatchQueue.main.async {
                    cell?.imageAktivite.image = image
                }
            }
            cell?.lblBaslik.text = baslik[indexPath.row]
            cell?.lblFiyat.text = fiyat[indexPath.row]
            return cell!
       
    }
    
}
