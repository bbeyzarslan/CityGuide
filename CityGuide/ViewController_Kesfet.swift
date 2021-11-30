//
//  ViewController_Kesfet.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit
import CoreData

class ViewController_Kesfet: TabbarViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableview: UITableView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(UINib.init(nibName: "TableViewCell_Resim", bundle: nil), forCellReuseIdentifier: "TableViewCell_Resim")
        
        tableview.register(UINib.init(nibName: "TableViewCell_Ozellikler", bundle: nil), forCellReuseIdentifier: "TableViewCell_Ozellikler")
        
        tableview.register(UINib.init(nibName: "TableViewCell_PopulerYer", bundle: nil), forCellReuseIdentifier: "TableViewCell_PopulerYer")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            
            let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell_Resim", for: indexPath) as? TableViewCell_Resim

            
            cell?.imageview.image = UIImage(named: (sehir?.image)!)
            cell?.lblBaslik.text = sehir?.baslik
            return cell!
        }
        else if indexPath.row == 1 {
            let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell_Ozellikler", for: indexPath) as? TableViewCell_Ozellikler
            
            return cell!
        }
        else if indexPath.row == 2 {
            let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell_PopulerYer", for: indexPath) as? TableViewCell_PopulerYer
            
            cell?.indexPath = indexPath
            cell?.delegate = self
            cell?.set(ozellik: sehir)
            return cell!
        }
        
        return UITableViewCell()
    }
    
}

extension ViewController_Kesfet: TableViewCell_PopulerYerDelegate {
    
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
    
    func didPopulerYer(ozellik: ozellik, mekan: Mekan) -> Begeniler? {
        
        if mekan.begeni == nil {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            
            let entity = NSEntityDescription.entity(forEntityName: "Begeniler", in: context)
            
            let kisi = NSManagedObject(entity: entity!, insertInto: context)
            
            kisi.setValue("\(ozellik.id)", forKey: "ozellikID")
            kisi.setValue("\(mekan.id)", forKey: "yerID")
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            return kisi as? Begeniler
        } else {
            (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext.delete(mekan.begeni!)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            return nil
        }
    }
}
