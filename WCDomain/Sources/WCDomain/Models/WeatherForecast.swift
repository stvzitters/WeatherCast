//
//  WeatherForecast.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct WeatherForecast: Codable, Sendable, Identifiable {
    
    public let id: String
    public let date: Date
    public let maxTemp: Double
    public let condition: WeatherCondition
    
    public init(date: Date, maxTemp: Double, condition: WeatherCondition) {
        self.id = UUID().uuidString
        self.date = date
        self.maxTemp = maxTemp
        self.condition = condition
    }
}
