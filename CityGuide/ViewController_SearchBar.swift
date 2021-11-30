//
//  ViewController_SearchBar.swift
//  CityGuide
//
//  Created by Beyza Arslan on 13.09.2021.
//

import UIKit

class ViewController_SearchBar: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var tableviewArama: UITableView!
    
    var tamListe = ["İstanbul", "Paris", "Roma", "Londra", "Edinburgh", "Zürih", "Atina", "Amsterdam", "Madrid", "Prag", "Venedik", "Milan"]
    var filtreliListe : [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableviewArama.delegate = self
        tableviewArama.dataSource = self
        
        filtreliListe.append(contentsOf: tamListe)
    }

    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
          //  searchBar.becomeFirstResponder()
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtreliListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = filtreliListe[indexPath.row]
        
        return cell
    }
    
    func didSearch(text: String) {
        
         filtreliListe = text.isEmpty ? tamListe : tamListe.filter({(str : String)->Bool in
             return str.range(of: text, options: .caseInsensitive) != nil
         })
         
         tableviewArama.reloadData()
    } 
    
    
   /* func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
       
        filtreliListe = searchText.isEmpty ? tamListe : tamListe.filter({(str : String)->Bool in
            return str.range(of: searchText, options: .caseInsensitive) != nil
        })
        
        tableviewArama.reloadData()
    } */
    

}
