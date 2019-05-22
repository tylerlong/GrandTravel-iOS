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
        
        let tc = TourViewController()
        tc.setLabel(text: "Tour #1")
        let view1 = tc.view!
        let view2 = TourViewController().view!
        let view3 = TourViewController().view!
        let view4 = TourViewController().view!
        NSLayoutConstraint.activate([
            view1.heightAnchor.constraint(equalToConstant: 256),
            view2.heightAnchor.constraint(equalToConstant: 256),
            view3.heightAnchor.constraint(equalToConstant: 256),
            view4.heightAnchor.constraint(equalToConstant: 256),
        ])
        stackView.addArrangedSubview(view1)
        stackView.addArrangedSubview(view2)
        stackView.addArrangedSubview(view3)
        stackView.addArrangedSubview(view4)
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
