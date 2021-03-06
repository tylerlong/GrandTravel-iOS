//
//  TabBarController.swift
//  GrandTravel
//
//  Created by Tyler Liu on 5/20/19.
//  Copyright © 2019 CHUNTAO LIU. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController)
    {
        if(self.selectedIndex == tabBar.items!.count - 1)
        {
            self.becomeFirstResponder()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
        let viewController1 = ViewController1()
        viewController1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "Home"), selectedImage: UIImage(named: "Home"))
        let viewController2 = ViewController2()
        viewController2.tabBarItem = UITabBarItem(title: "About", image: UIImage(named: "About"), selectedImage: UIImage(named: "About"))
        let viewController3 = ViewController3()
        viewController3.tabBarItem = UITabBarItem(title: "Tours", image: UIImage(named: "Tours"), selectedImage: UIImage(named: "Tours"))
        let viewController4 = ViewController4()
        viewController4.tabBarItem = UITabBarItem(title: "Contact", image: UIImage(named: "Contact"), selectedImage: UIImage(named: "Contact"))
       
        let viewController5 = sharedDimelo.chatViewController()!
        viewController5.tabBarItem = UITabBarItem(title: "Chat", image: UIImage(named: "Chat"), selectedImage: UIImage(named: "Chat"))

        viewControllers = [viewController1, viewController2, viewController3, viewController4, viewController5]

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
