//
//  TableViewCell_PopulerYer.swift
//  CityGuide
//
//  Created by Beyza Arslan on 3.09.2021.
//

import UIKit

protocol TableViewCell_PopulerYerDelegate {
    func didPopulerYer(ozellik: ozellik, mekan: Mekan) -> Begeniler?
    func yerBul(ozellikId: Int, yerId: Int) -> Begeniler?
}

class TableViewCell_PopulerYer: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var lblYer: UILabel!
    @IBOutlet weak var collectionviewYer: UICollectionView!
    
    var selectedOzellik : ozellik?
    var delegate: TableViewCell_PopulerYerDelegate?
    var indexPath = IndexPath.init(row: 0, section: 0)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionviewYer.delegate = self
        collectionviewYer.dataSource = self
        
        collectionviewYer.register(UINib.init(nibName: "CollectionViewCell_PopulerYer", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_PopulerYer")
        
        collectionviewYer.collectionViewLayout = ColumnFlowLayout(sutunSayisi: 2, minSutunAraligi: 5, minSatirAraligi: 10)
    }
    
    func set(ozellik: ozellik?) {
        selectedOzellik = ozellik
        yerBegenileriniBul()
    }

    func yerBegenileriniBul() {
        for var i in 0..<4 {
            if let delegate = self.delegate, let ozellik = selectedOzellik {
                let mekan = ozellik.yerler[i]
                if let begeni = delegate.yerBul(ozellikId: ozellik.id, yerId: mekan.id) {
                    mekan.begeni = begeni
                }
            }
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionviewYer.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_PopulerYer", for: indexPath) as? CollectionViewCell_PopulerYer
        
        let mekan = selectedOzellik?.yerler[indexPath.row]

        cell?.imagePopulerYer.image = UIImage(named: (mekan?.image)!)
        cell?.lblBaslik.text = mekan?.baslik
        cell?.lblAciklama.text = mekan?.aciklama
        cell?.delegate = self
        cell?.mekan = mekan
        cell?.btnFavori.isSelected = (mekan?.begeni == nil) ? false : true
        return cell!
    }
}

extension TableViewCell_PopulerYer: CollectionViewCell_PopulerYerDelegate {
    
    func didFavoriteTapped(mekan: Mekan) {
        
        if let delegate = delegate, let ozellik = selectedOzellik {
            let begeni = delegate.didPopulerYer(ozellik: ozellik,
                                                mekan: mekan)
            mekan.begeni = begeni
            collectionviewYer.reloadData()
        }
    }
}
