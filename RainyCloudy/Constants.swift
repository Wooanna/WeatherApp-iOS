//
//  Constants.swift
//  RainyCloudy
//
//  Created by Yoanna Mareva on 8/27/16.
//  Copyright © 2016 Yoanna Mareva. All rights reserved.
//

import Foundation

let KEY = "d59f84c1ac34f4c81335bb9c20fa736e"
let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let WEATHER = "weather?"
let DAILY_FORECAST = "forecast/daily?"
let LON = "&lon="
let LAT = "lat="
let API_ID = "&appid="
let COUNT = "&cnt="
let DAYS_COUNT = 10
let RESULT_MODE_JSON = "&mode=json"
typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(WEATHER)\(LAT)\(Location.sharedInstance.latitude!)\(LON)\(Location.sharedInstance.longitude!)\(API_ID)\(KEY)"

let FORECAST_URL = "\(BASE_URL)\(DAILY_FORECAST)\(LAT)\(Location.sharedInstance.latitude!)\(LON)\(Location.sharedInstance.longitude!)\(COUNT)\(DAYS_COUNT)\(RESULT_MODE_JSON)\(API_ID)\(KEY)"
