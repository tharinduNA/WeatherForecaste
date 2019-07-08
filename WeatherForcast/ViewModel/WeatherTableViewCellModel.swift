//
//  RepoTableViewCellModel.swift
//  WeatherForcast
//

import Foundation

class WeatherTableViewCellModel {
    
    private let condition: Conditions
    
    init(condition: Conditions) {
        self.condition = condition
    }
    
    var date: String {
        return getDateFromTimeStamp(timeStamp: condition.dt)
    }
    
    var desc: String {
        return condition.weather.first?.description.capitalizingFirstLetter() ?? Constants.BLANK
    }
    
    var imageId: String? {
        return condition.weather.first?.icon ?? Constants.BLANK
    }
    
    // get date and time from timestamp
    func getDateFromTimeStamp(timeStamp : Double) -> String {
        
        let date = NSDate(timeIntervalSince1970: timeStamp)
        let dayTimePeriodFormatter = DateFormatter()
        dayTimePeriodFormatter.dateFormat = Constants.DATE_TIME_FORMAT
        let dateString = dayTimePeriodFormatter.string(from: date as Date)
        return dateString
        
    }
}
