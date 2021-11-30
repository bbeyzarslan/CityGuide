//
//  ViewController_Begeni.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit
import CoreData



class ViewController_Begeni: TabbarViewController, UICollectionViewDelegate, UICollectionViewDataSource, CollectionViewCell_BegeniDelegate {

    @IBOutlet weak var collectonview: UICollectionView!
    
    var begenilistesi = [Begeniler]()
    var mekanlar = [Mekan]()
    
    var selectedOzellik : ozellik?
    var mekan : Mekan?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectonview.delegate = self
        collectonview.dataSource = self
        
        if let flowLayout = collectonview.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.itemSize = CGSize.init(width: collectonview.frame.size.width, height: 135.0)
            flowLayout.estimatedItemSize = CGSize.init(width: collectonview.frame.size.width, height: 135.0)
        }
        collectonview.register(UINib.init(nibName: "CollectionViewCell_Begeni", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_Begeni")
       
        begenileriGetir()
        
    }
    
    func begenileriGetir() {
        
        mekanlar.removeAll()
        let fr : NSFetchRequest<Begeniler> = Begeniler.fetchRequest()
        let filter = sehir?.id
        let predicate = NSPredicate(format: "ozellikID = %i", filter!)
        fr.predicate = predicate
        
        do {
            begenilistesi = try (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.fetch(fr)
            
            let ozellikListesi = DataHelper.getIcerikListesi()
            for begeni in begenilistesi {
                let filteredOzellik = ozellikListesi.filter({(begeni.ozellikID?.elementsEqual("\($0.id)"))!})
                if filteredOzellik.count > 0, let filteredOzellikItem = filteredOzellik.first {
                    let filteredMekan = filteredOzellikItem.yerler.filter({(begeni.yerID?.elementsEqual("\($0.id)"))!})
                    if filteredMekan.count > 0, let filteredMekanItem = filteredMekan.first {
                        mekanlar.append(filteredMekanItem)
                    }
                }
            }
            collectonview.reloadData()
        }
        catch {}
    }
    
    
    
    func yerBul(ozellikId: Int, yerId: Int) -> Begeniler? {
        let fr : NSFetchRequest<Begeniler> = Begeniler.fetchRequest()
        let predicate = NSPredicate(format: "ozellikID = %i AND yerID = %i", ozellikId, yerId)
        fr.predicate = predicate
        var begeni: Begeniler?
        do {
            begeni = try (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.fetch(fr).first
        } catch {
            
        }
        return begeni
    }
  
    
    func didFavoriteTapped(mekan: Mekan) {
        if mekan.begeni != nil {
            (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.delete(mekan.begeni!)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        begenileriGetir()
    }
   
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mekanlar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectonview.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_Begeni", for: indexPath) as? CollectionViewCell_Begeni

        let mekan = mekanlar[indexPath.row]
        cell?.baslikBegeni.text = mekan.baslik
        cell?.aciklamaBegeni.text = mekan.aciklama
        cell?.imageBegeni.image = UIImage.init(named: mekan.image!)
        cell?.layer.cornerRadius = 10
        cell?.layer.borderWidth = 0.4
        cell?.mekan = mekan
        cell?.delegate = self
        cell?.set(ozellik: sehir)
        cell?.favButton.isSelected = (mekan.begeni == nil) ? false : true
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
