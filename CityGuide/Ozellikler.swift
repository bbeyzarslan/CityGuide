//
//  Ozellikler.swift
//  CityGuide
//
//  Created by Beyza Arslan on 27.08.2021.
//

import UIKit

class ozellik {
    
    var id: Int = 0
    var baslik : String?
    var image : String?
    var yerler = [Mekan]()
    var enlem : [Float]?
    var boylam : [Float]?
}

class Mekan {
    var id: Int = 0
    var baslik : String?
    var image : String?
    var aciklama : String?
    var baslikGaleri : String?
    var galeriImage : String?
    var begeni: Begeniler?
}
