//
//  ViewController.swift
//  TConverter
//
//  Created by Andrey on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiumLabel: UILabel!
    @IBOutlet weak var fahrenheitLAbel: UILabel!
    @IBOutlet weak var slader: UISlider! {
        didSet{
            slader.maximumValue = 100
            slader.minimumValue = 0
            slader.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempCelcium = Int(round(sender.value))
        celsiumLabel.text = "\(tempCelcium)ºC"
        let tempFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLAbel.text = "\(tempFahrenheit)ºF"
    }
    
    

}

