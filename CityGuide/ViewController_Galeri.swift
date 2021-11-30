//
//  ViewController_Galeri.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit

class ViewController_Galeri: TabbarViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        collectionview.delegate = self
        collectionview.dataSource = self
        
        collectionview.register(UINib.init(nibName: "CollectionViewCell_Galeri", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_Galeri")
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (sehir?.yerler.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_Galeri", for: indexPath) as? CollectionViewCell_Galeri
        
        let mekan = sehir?.yerler[indexPath.row]
        
        cell?.lblGaleri.text = mekan?.baslik
        cell?.imageGaleri.image = UIImage(named: (mekan?.galeriImage)!)
        return cell!
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
