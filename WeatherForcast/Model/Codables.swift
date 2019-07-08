//
//  Codables.swift
//  WeatherForcast
//

import Foundation

struct Weather: Codable {
    let cod: String
    let message: Double
    let cnt: Int
    let list: [Conditions]
    let city: City?
}

struct Conditions: Codable {
    let dt: Double
    let weather: [WeatherCondition]
}

struct WeatherCondition: Codable {
    let id: Int
    let description: String
    let icon: String
}

struct City: Codable {
    let name: String
}
