//
//  WeatherAPI.swift
//  WeatherForcast
//

import Foundation


// fetch data according to input
enum WeatherAPI {
    case cordinates
    case id
    case city
    case zipcode
}

extension WeatherAPI {
    var baseURL: URL {
        return URL(string: Constants.BASE_URL_OPEN_WEATHER)!
    }
    
    var appId: String {
        return Constants.APP_ID_PREFIX + Constants.APP_ID
    }
    
    var path: String {
        switch self {
        case .cordinates:
            return Constants.WEATHER_FROM_CORDINATES
        case .id:
            return Constants.WEATHER_FROM_ID
        case .city:
            return Constants.WEATHER_FROM_CITY
        case .zipcode:
            return Constants.WEATHER_FROM_ZIPCODE
        }
    }
}
