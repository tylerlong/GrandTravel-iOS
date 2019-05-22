//
//  ViewController3.swift
//  GrandTravel
//
//  Created by Tyler Liu on 5/20/19.
//  Copyright © 2019 RingCentral. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = TourViewController(imageName: "tours-img-1", name: "French Autumn").view!
        let view2 = TourViewController(imageName: "tours-img-2", name: "Grand Switzerland").view!
        let view3 = TourViewController(imageName: "tours-img-3", name: "Prague Trip").view!
        let view4 = TourViewController(imageName: "tours-img-4", name: "Discover Japan").view!
        let view5 = TourViewController(imageName: "tours-img-5", name: "Sunny Croatia").view!
        let view6 = TourViewController(imageName: "tours-img-6", name: "Romantic Netherlands").view!
        let view7 = TourViewController(imageName: "tours-img-7", name: "Magnificent Italy").view!
        let view8 = TourViewController(imageName: "tours-img-8", name: "Majestic England").view!
        let view9 = TourViewController(imageName: "tours-img-9", name: "Mediterranean Greece").view!

        NSLayoutConstraint.activate([
            view1.heightAnchor.constraint(equalToConstant: 384),
            view2.heightAnchor.constraint(equalToConstant: 384),
            view3.heightAnchor.constraint(equalToConstant: 384),
            view4.heightAnchor.constraint(equalToConstant: 384),
            view5.heightAnchor.constraint(equalToConstant: 384),
            view6.heightAnchor.constraint(equalToConstant: 384),
            view7.heightAnchor.constraint(equalToConstant: 384),
            view8.heightAnchor.constraint(equalToConstant: 384),
            view9.heightAnchor.constraint(equalToConstant: 384),
        ])
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(view3)
        stackView.addArrangedSubview(view4)
        stackView.addArrangedSubview(view5)
        stackView.addArrangedSubview(view6)
        stackView.addArrangedSubview(view7)
        stackView.addArrangedSubview(view8)
        stackView.addArrangedSubview(view9)
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
