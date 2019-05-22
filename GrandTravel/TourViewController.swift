//
//  TourViewController.swift
//  GrandTravel
//
//  Created by Tyler Liu on 5/21/19.
//  Copyright © 2019 RingCentral. All rights reserved.
//

import UIKit

class TourViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.label.text = self.text ?? "Default"
        // Do any additional setup after loading the view.
    }
    
    func setLabel(text: String) {
        self.text = text
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
