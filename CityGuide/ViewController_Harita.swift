//
//  ViewController_Harita.swift
//  CityGuide
//
//  Created by Beyza Arslan on 21.08.2021.
//

import UIKit
import MapKit

class ViewController_Harita: TabbarViewController {

    @IBOutlet weak var mapview: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.,
                
        if sehir?.baslik == "İstanbul" {
            createAnnotations(locations: istanbulLocation)
        }
        else if sehir?.baslik == "Paris" {
            createAnnotations(locations: parisLocation)
        }
        else if sehir?.baslik == "Roma" {
            createAnnotations(locations: romaLocation)
        }
        else if sehir?.baslik == "Londra" {
            createAnnotations(locations: londraLocation)
        }
        else if sehir?.baslik == "Edinburgh" {
            createAnnotations(locations: edinburghLocation)
        }
        else if sehir?.baslik == "Zürih" {
            createAnnotations(locations: zurihLocation)
        }
        
    }
    
    
    func createAnnotations(locations : [[String: Any]]) {
        
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude: location["enlem"] as! CLLocationDegrees, longitude: location["boylam"] as! CLLocationDegrees)
            
            mapview.addAnnotation(annotations)
            
            self.mapview.setRegion(MKCoordinateRegion(center: annotations.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: true)
        }
    }
    
    let istanbulLocation = [
        ["title" : "Kız Kulesi", "enlem": 41.021122, "boylam": 29.004110],
        ["title" : "Ayasofya", "enlem": 41.0083, "boylam": 28.9800],
        ["title" : "Topkapı Sarayı", "enlem": 41.010498, "boylam": 28.982363],
        ["title" : "Kapalı Çarşı", "enlem": 41.010582, "boylam": 28.967934]
    ]
    
    let parisLocation = [
        ["title" : "Eyfel Kulesi", "enlem": 48.856111, "boylam": 2.298333],
        ["title" : "Notre-Dame", "enlem": 48.853412, "boylam": 2.34909],
        ["title" : "Louvre Müzesi", "enlem": 48.861174, "boylam": 2.335473],
        ["title" : "Pantheon", "enlem": 48.8461, "boylam": 2.34583],
        ["title" : "Palais Garnier", "enlem": 48.871846, "boylam": 2.330647]
    ]
    
    let romaLocation = [
        ["title" : "Trevi Çeşmesi", "enlem": 41.900926, "boylam": 12.483029],
        ["title" : "Kolezyum", "enlem": 41.889582, "boylam": 12.492525],
        ["title" : "Novana Meydanı", "enlem": 41.898973, "boylam": 12.473316],
        ["title" : "Aziz Petrus Meydanı", "enlem": 41.9022, "boylam": 12.4564]
    ]
    
    let londraLocation = [
        ["title" : "Buckingham Sarayı", "enlem": 51.501539, "boylam": -0.141336],
        ["title" : "Trafalgar Meydanı", "enlem": 51.508091, "boylam": -0.128129],
        ["title" : "British Museum", "enlem": 51.519444, "boylam": -0.126944],
        ["title" : "London Eye", "enlem": 51.502998, "boylam": -0.117977],
    ]
    
    let edinburghLocation = [
        ["title" : "Edinburgh Kalesi", "enlem": 55.948469, "boylam": -3.198904],
        ["title" : "Royal Mile", "enlem": 55.950558, "boylam": -3.185556],
        ["title" : "Holyrood Sarayı", "enlem": 55.952499, "boylam": -3.172500],
        ["title" : "Scott Anıtı", "enlem": 55.952415, "boylam": -3.193278],
    ]
    
    let zurihLocation = [
        ["title" : "Uetliberg", "enlem": 47.35034, "boylam": 8.49029],
        ["title" : "Kunsthaus", "enlem": 47.370075, "boylam": 8.54888],
        ["title" : "Bahnhofstrasse", "enlem": 47.371551, "boylam": 8.538532],
        ["title" : "Lindenhof", "enlem": 47.373133, "boylam": 8.540669]
    ]
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
