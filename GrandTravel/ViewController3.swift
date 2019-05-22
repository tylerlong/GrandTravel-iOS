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
        
        let view1 = TourViewController(imageName: "tours-img-1", name: "French Autumn", price: "$1625.00", desc: "Spend your unforgettable autumn vacation in Paris – -you will enjoy its beauty and magic!").view!
        let view2 = TourViewController(imageName: "tours-img-2", name: "Grand Switzerland", price: "$2300.00", desc: "Explore the magnificent Switzerland’s Alpines mountains, visit lovely villages and great cities!").view!
        let view3 = TourViewController(imageName: "tours-img-3", name: "Prague Trip", price: "$1625.00", desc: "Feel the spirit of old Prague, walk the streets and take amazing photos with that medieval buildings.").view!
        let view4 = TourViewController(imageName: "tours-img-4", name: "Discover Japan", price: "$1625.00", desc: "Linger in the gardens of Kyoto, shoot through the mountain air on a Shinkansen bullet train – discover Japan!").view!
        let view5 = TourViewController(imageName: "tours-img-5", name: "Sunny Croatia", price: "$1625.00", desc: "You don’t have to travel to a galaxy far away to experience the captivating adventures of the rebellion during your 9-day Star Wars-inspired tour of Croatia.").view!
        let view6 = TourViewController(imageName: "tours-img-6", name: "Romantic Netherlands", price: "$1625.00", desc: "Stare at the majestic mountains of the Alps surrounded by the decadent aroma of melting chocolate.").view!
        let view7 = TourViewController(imageName: "tours-img-7", name: "Magnificent Italy", price: "$1625.00", desc: "The palace of Versailles captures your imagination with lavish gardens sweeping out to the horizon. Alpine lakes ripple with pristine waters reflecting the encompassing mountainsides.").view!
        let view8 = TourViewController(imageName: "tours-img-8", name: "Majestic England", price: "$1625.00", desc: "As we bid farewell to the final season of Downton Abbey, this custom tailored tour allows you to relive your favorite series firsthand by visiting film locations across London and throughout the English countryside.").view!
        let view9 = TourViewController(imageName: "tours-img-9", name: "Mediterranean Greece", price: "$1625.00", desc: "Explore Mediterranean delight on this 16-day tour of Italy, Greece, Turkey, and Croatia. Experience the history, elegance and surreal beauty that uniquely and memorably define each day of this journey.").view!

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
