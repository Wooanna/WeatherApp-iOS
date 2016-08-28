//
//  CurrentData.swift
//  RainyCloudy
//
//  Created by Yoanna Mareva on 8/27/16.
//  Copyright © 2016 Yoanna Mareva. All rights reserved.
//

import UIKit
import Alamofire

class CurrentData {
    var _cityName : String!
    var _date: String!
    var _weatherType: String!
    var _temperature : Double!
    
    var cityName : String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var weatherType : String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var date : String {
        if _date == nil {
            _date = ""
            
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var temperature : Double {
        if _temperature == nil {
         _temperature = 0
        }
        
        return _temperature
    }

    func downloadWeatherDetails(completed: DownloadComplete) {
        //Alamofire
       
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        Alamofire.request(currentWeatherURL, withMethod: .get).responseJSON { (response) in
            let result = response.result
            print(result)
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let name = dict["name"] as? String {
                    self._cityName = name.capitalized
                    print(self._cityName)
                }
                
                if let weather = dict["weather"] as? Array<Dictionary<String, AnyObject>> {
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main.capitalized
                        print(self._weatherType)
                    }
                }
                
                if let main = dict["main"] as? Dictionary<String, AnyObject> {
                    if let currentTemperature = main["temp"] as? Double {
                        let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                        let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                        
                        self._temperature = kelvinToFarenheit
                        print(self._temperature)
                    }
                }
            }
            completed()
        }
        
    }
}
