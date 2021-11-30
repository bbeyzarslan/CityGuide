//
//  ViewController.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchResultsUpdating, UISearchBarDelegate {
    
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var tableview: UITableView!
    
    
    var ozellikListesi : [ozellik] = []
    var itemSize: CGSize = CGSize(width: 0, height: 0 )
    
    let searchController = UISearchController(searchResultsController: ViewController_SearchBar())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionview.delegate = self
        collectionview.dataSource = self
        
        ozellikListesi.append(contentsOf: DataHelper.getIcerikListesi())
        
        let sutunSayisi = 2.0
        let araliklar = 20.0 * (sutunSayisi + 1)

        let elemanGenisligi = (Double(collectionview.bounds.size.width) - araliklar) / sutunSayisi - 20
        
        let elemanYuksekligi = elemanGenisligi
        
        itemSize = CGSize(width: elemanGenisligi, height: elemanYuksekligi)
        
        collectionview.register(UINib.init(nibName: "CollectionViewCell_Aktivite", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_Aktivite")
        
        collectionview.register(UINib.init(nibName: "CollectionViewCell_GidilecekYer", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_GidilecekYer")
        collectionview.register(UINib.init(nibName: "CollectionViewCell_GidYerler", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell_GidYerler")
        
        searchController.searchBar.delegate = self
 //       searchController.searchBar.delegate = searchController.searchResultsUpdater as! UISearchBarDelegate
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        
        
      //  setUpNavBar()
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if let controller = searchController.searchResultsController as? ViewController_SearchBar {
           // searchController.searchBar.delegate = delegate
            controller.didSearch(text: searchText)
        }
    }
    

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return ozellikListesi.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets.zero
        }
        return UIEdgeInsets.init(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 20, height: 20)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: UIScreen.main.bounds.width, height: 200)
        }
       else if indexPath.section == 1 {

        return itemSize
        
        }
        
        return CGSize()
        
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_Aktivite", for: indexPath) as! CollectionViewCell_Aktivite
            return cell
        }
            
        else if indexPath.section == 1 {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell_GidYerler", for: indexPath) as? CollectionViewCell_GidYerler
            
            let i = ozellikListesi[indexPath.row]
            
            cell?.lblYer.text = i.baslik
        
            DispatchQueue.main.async {
                cell?.imageYer.image =  UIImage(named: i.image!)
                cell?.setCornerRadius()
            }
            
            //cell?.setNeedsLayout()
            //cell?.layoutIfNeeded()
            
            return cell!
        }
        
       return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            let controller = (self.storyboard?.instantiateViewController(identifier: "ViewController_Tabbar"))! as ViewController_Tabbar
            controller.selectedOzellik = ozellikListesi[indexPath.row]
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}

extension ViewController : CollectionViewCell_GidilecekYerDelegate {
    
    func didChangePage(selectedIndex: Int) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController_Tabbar") as! ViewController_Tabbar
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
}
