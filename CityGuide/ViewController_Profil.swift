//
//  ViewController_Profil.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit

class ViewController_Profil: TabbarViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var btnKayıtOl: UIButton!
    @IBOutlet weak var tableview: UITableView!
    
    var profil = ["Tüm Planlar", "Bize Ulaşın", "Gizlilik Politikası", "Kullanım Şartları"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        btnKayıtOl.layer.cornerRadius = 15
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(UINib.init(nibName: "TableViewCell_Profil", bundle: nil), forCellReuseIdentifier: "TableViewCell_Profil")
    }
    
    @IBAction func btnKayıtOl_TUI(_ sender: Any) {
        if let url = NSURL(string: "http://www.ibb.istanbul"){
            UIApplication.shared.openURL(url as URL)
            }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell_Profil", for: indexPath) as? TableViewCell_Profil
        
        cell?.lblBaslik.text = profil[indexPath.row]
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let url = NSURL(string: "http://www.ibb.istanbul"){
            UIApplication.shared.openURL(url as URL)
            }
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
