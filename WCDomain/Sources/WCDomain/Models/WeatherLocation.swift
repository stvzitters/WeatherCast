//
//  WeatherLocation.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct WeatherLocation: Codable, Sendable, Identifiable {
    
    public let id: String
    public let lat: String
    public let lon: String
    public let cityName: String
    public var reading: WeatherReading?
    public var forecast: [WeatherForecast]?
    public var lastUpdated: Date?
    
    public init(lat: String, lon: String, cityName: String) {
        self.id = UUID().uuidString
        self.lat = lat
        self.lon = lon
        self.cityName = cityName
    }
}
