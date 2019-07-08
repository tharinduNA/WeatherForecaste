//
//  Extensions.swift
//  WeatherForcast
//
//  Created by Dinidu Bhathiya on 7/7/19.
//  Copyright © 2019 demo. All rights reserved.
//

import Foundation

//This extention will make upper case the first letter of a string.
extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
