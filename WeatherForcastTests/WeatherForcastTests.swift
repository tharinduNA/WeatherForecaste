//
//  WeatherForcastTests.swift
//  WeatherForcastTests
//

import XCTest
@testable import WeatherForcast
//@testable import WeatherTableViewCellModel

class WeatherForcastTests: XCTestCase {

    override func setUp() {

    }

    override func tearDown() {

    }

    func testStringConstants() {
        XCTAssertEqual(Constants.APP_ID, "fe3d1869f9f89548698c7be30291b0f8")
        XCTAssertEqual(Constants.DATE_TIME_FORMAT, "dd MMM YY, hh:mm a")
    }

    func testWeatherApiEndPoint() {
        
        let urlString = WeatherAPI.cordinates.baseURL.appendingPathComponent(WeatherAPI.cordinates.path).appendingPathExtension(WeatherAPI.cordinates.appId).absoluteString.removingPercentEncoding

        XCTAssertEqual(urlString, "https://api.openweathermap.org/data/2.5/forecast?lat=1&lon=103.&appid=fe3d1869f9f89548698c7be30291b0f8")
    }
    
    func testDataAndTime() {
//
//        let jsonString = "{\"cod\":\"200\",\"message\":0.0064,\"cnt\":40,\"list\":[{\"dt\":1562500800,\"weather\":[{\"id\":501,\"description\":\"moderate rain\",\"icon\":\"10n\"}]\"dt_txt\":\"2019-07-07 12:00:00\"}]}"
//
//
//        let data = jsonString.data(using: .utf8)!
//        do {
//            if let json = try JSONSerialization.jsonObject(with: data, options : .allowFragments) as? [Dictionary<String,Any>]
//            {
//                print(json) // use the json here
//            }
//        } catch let error as NSError {
//            print(error)
//        }

    }

}
