//
//  WeatherInfo.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct WeatherInfo: Codable, Sendable, Identifiable {
    
    public let id: String
    public let lat: Double
    public let lon: Double
    public let reading: WeatherReading
    public let forecast: [WeatherForecast]
    public let lastUpdated: Date
    
    public init(id: String = UUID().uuidString,
                lat: Double,
                lon: Double,
                reading: WeatherReading,
                forecast: [WeatherForecast],
                lastUpdated: Date) {
        self.id = id
        self.lat = lat
        self.lon = lon
        self.reading = reading
        self.forecast = forecast
        self.lastUpdated = lastUpdated
    }
}
