//
//  TabBarController.swift
//  GrandTravel
//
//  Created by Tyler Liu on 5/20/19.
//  Copyright © 2019 RingCentral. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewController1 = ViewController1()
        viewController1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Bank"), selectedImage: UIImage(named: "BankSelected"))

        viewControllers = [viewController1]

        // Do any additional setup after loading the view.
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
