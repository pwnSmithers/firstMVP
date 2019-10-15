//
//  ViewController.swift
//  firstMVP
//
//  Created by Smithers on 08/10/2019.
//  Copyright © 2019 Smithers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())
    
    @IBAction func redButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @IBAction func orangeButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Orange")
    }
    
    @IBAction func greenButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName: "Green")
    }
    
    @IBOutlet weak var currentColorLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
    }
    

}

extension ViewController: TrafficLightViewDelegate{
    func displayTrafficLight(description: (String)) {
        currentColorLabel.text = description
    }
}


