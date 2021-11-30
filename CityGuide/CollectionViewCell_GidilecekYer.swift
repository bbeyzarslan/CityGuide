//
//  CollectionViewCell_GidilecekYer.swift
//  CityGuide
//
//  Created by Beyza Arslan on 24.08.2021.
//

import UIKit

protocol CollectionViewCell_GidilecekYerDelegate {
    func didChangePage(selectedIndex: Int)
    }


class CollectionViewCell_GidilecekYer: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cvGidilecekYer: UICollectionView!
    
    var delegate : CollectionViewCell_GidilecekYerDelegate?
    
    var ozellikListesi : [ozellik] = []
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        ozellikListesi = DataHelper.getIcerikListesi()

        cvGidilecekYer.delegate = self
        cvGidilecekYer.dataSource = self
        
        cvGidilecekYer.register(UINib.init(nibName: "CollectionViewCell_GidYerler", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_GidYerler")
        
    }
    
    func fillIcerikListesi(selectedIndex: Int) {
        ozellikListesi = DataHelper.getIcerikListesi()
        cvGidilecekYer.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = cvGidilecekYer.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_GidYerler", for: indexPath) as? CollectionViewCell_GidYerler
        
        let i = ozellikListesi[indexPath.row]
        
        cell?.lblYer.text = i.baslik
        cell?.imageYer.image = UIImage(named: i.image!) 
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        if let delegate = delegate {
            delegate.didChangePage(selectedIndex: indexPath.row)
            
        }
    }
}
