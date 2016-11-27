//
//  ViewController.swift
//  mWeather
//
//  Created by Eugen Ackermann on 27.11.16.
//  Copyright © 2016 modular design GmbH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelTemp: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    @IBOutlet weak var imageViewWeather: UIImageView!
    @IBOutlet weak var labelWeather: UILabel!
    
    var weather = DataModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weather.downloadData {
            self.updateUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        labelDate.text = weather.date
        labelTemp.text = "\(weather.temp)"
        labelLocation.text = weather.location
        labelWeather.text = weather.weather
        imageViewWeather.image = UIImage(named: weather.weather)
    }

}

