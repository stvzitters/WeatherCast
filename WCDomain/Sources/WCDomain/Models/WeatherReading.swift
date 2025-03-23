//
//  WeatherReading.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct WeatherReading: Codable, Sendable, Identifiable {
    
    public let id: String
    public let cityName: String
    public let currentTemp: Double
    public let minTemp: Double
    public let maxTemp: Double
    public let condition: WeatherCondition
    
    public init(cityName: String, currentTemp: Double, minTemp: Double, maxTemp: Double, condition: WeatherCondition) {
        self.id = UUID().uuidString
        self.cityName = cityName
        self.currentTemp = currentTemp
        self.minTemp = minTemp
        self.maxTemp = maxTemp
        self.condition = condition
    }
}
