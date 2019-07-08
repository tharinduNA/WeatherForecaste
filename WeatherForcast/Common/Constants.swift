//
//  Constants.swift
//  WeatherForcast
//
//  Created by Dinidu Bhathiya on 7/7/19.
//  Copyright © 2019 demo. All rights reserved.
//

import Foundation

struct Constants {
    
    /* App constants */
    static let APP_ID = "fe3d1869f9f89548698c7be30291b0f8"
    static let TABLE_CELL_ID = "weather_cell"
    static let DATE_TIME_FORMAT = "dd MMM YY, hh:mm a"
    
    /* Internal strings */
    static let BLANK = ""
    static let APP_ID_PREFIX = "&appid="
    
    
    /* URLs */
    static let BASE_URL_OPEN_WEATHER = "https://api.openweathermap.org"
    static let WEATHER_FROM_CORDINATES = "/data/2.5/forecast?lat=1&lon=103"
    static let WEATHER_FROM_ID = "/data/2.5/forecast?id=524901"
    static let WEATHER_FROM_ZIPCODE = "data/2.5/forecast?zip=94040"
    static let WEATHER_FROM_CITY = "data/2.5/forecast?q=London"
    
}
