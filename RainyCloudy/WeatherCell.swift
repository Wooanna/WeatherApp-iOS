//
//  WeatherCell.swift
//  RainyCloudy
//
//  Created by Yoanna Mareva on 8/27/16.
//  Copyright © 2016 Yoanna Mareva. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var minTemp: UILabel!
    @IBOutlet weak var maxTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        minTemp.text = forecast.lowTemp
        maxTemp.text = forecast.highTemp
        weatherType.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named: forecast.weatherType)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
