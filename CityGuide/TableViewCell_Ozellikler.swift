//
//  TableViewCell_Ozellikler.swift
//  CityGuide
//
//  Created by Beyza Arslan on 26.08.2021.
//

import UIKit

class TableViewCell_Ozellikler: UITableViewCell, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableviewOzellik: UITableView!
    
    var icon = ["camera.fill", "flag.fill", "eye.fill", "binoculars.fill", "mappin"]
    var baslik = ["Yapılacaklar", "Günlük Gezi", "Görülecek Yerler", "Sakin Yerler", "Yakın Çevre"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        tableviewOzellik.delegate = self
        tableviewOzellik.dataSource = self

        tableviewOzellik.register(UINib.init(nibName: "TableViewCell_Ozellik2", bundle: nil), forCellReuseIdentifier: "TableViewCell_Ozellik2")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewOzellik.dequeueReusableCell(withIdentifier: "TableViewCell_Ozellik2", for: indexPath) as? TableViewCell_Ozellik2
        
        cell?.imageicon.image = UIImage(systemName: icon[indexPath.row])
        cell?.imageicon.tintColor = UIColor.init(red: 46.0/255, green: 139.0/255, blue: 87.0/255, alpha: 1.0)
        cell?.lblBaslik.text = baslik[indexPath.row]
        return cell!
    }
    
    
}
