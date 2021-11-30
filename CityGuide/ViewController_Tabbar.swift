//
//  ViewController_Tabbar.swift
//  CityGuide
//
//  Created by Beyza Arslan on 26.08.2021.
//

import UIKit

class ViewController_Tabbar: UITabBarController {

   // var sehir : ozellik?
    var selectedOzellik : ozellik?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let controllers = self.viewControllers {
         
            for controller in controllers {
                if let tabViewController = controller as? TabbarViewController {
                    tabViewController.sehir = selectedOzellik
                }
            }
        }
    }
}

class TabbarViewController: UIViewController {
    var sehir : ozellik?

}
