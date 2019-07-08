//
//  Communication.swift
//  WeatherForcast
//

import Foundation

struct Networking {
    
    // call api and get weather data
    func callWeatherApi<T: Codable>(endpoint: WeatherAPI,
                                        type: T.Type,
                                        completion: ((_ response: T) -> Void)?) {
        
        let urlString = endpoint.baseURL.appendingPathComponent(endpoint.path).appendingPathExtension(endpoint.appId).absoluteString.removingPercentEncoding
        
        guard let urlRequest = URL(string: urlString ?? Constants.BLANK) else { return }
        
        let urlSession = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
            if let _ = error {
                return
            }
            guard let data = data else {
                return
            }
            let response = Response(data: data)
            guard let decoded = response.decode(type) else {
                return
            }
            completion?(decoded)
        }
        urlSession.resume()
    }
    
}
