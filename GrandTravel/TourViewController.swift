//
//  TourViewController.swift
//  GrandTravel
//
//  Created by Tyler Liu on 5/21/19.
//  Copyright © 2019 CHUNTAO LIU. All rights reserved.
//

import UIKit

class TourViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    var imageName: String?
    var name: String?
    var price: String?
    var desc: String?
    
    init(imageName: String, name: String, price: String, desc: String) {
        self.imageName = imageName
        self.name = name
        self.price = price
        self.desc = desc
        super.init(nibName: nil, bundle: nil)
    }
    
    convenience init() {
        self.init(imageName: "tours-img-1", name: "French Autumn", price: "$1625.00", desc: "Spend your unforgettable autumn vacation in Paris – -you will enjoy its beauty and magic!")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageName!)
        nameLabel.text = name
        priceLabel.text = price
        descriptionLabel.text = desc
        
//        self.label.text = self.text
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
