//
//  RepoTableViewModel.swift
//  WeatherForcast
//

import Foundation

class WeatherTableViewModel {
    
    private let networking = Networking()
    
    private var weather: Weather?
    
    public func getWeatherInfo(completion: (() -> Void)?) {
        networking.callWeatherApi(endpoint: WeatherAPI.cordinates,
                                      type: Weather.self) { [weak self] (response) in
                                        self?.weather = response
                                        completion?()
        }
    }
    
    public func cellViewModel(index: Int) -> WeatherTableViewCellModel? {
        guard let weatherData = weather else { return nil }
        let weatherTableViewCellModel = WeatherTableViewCellModel(condition: weatherData.list[index])
        return weatherTableViewCellModel
    }
    
    public var count: Int {
        return weather?.cnt ?? 0
    }
    
}
