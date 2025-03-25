//
//  SwiftDataWeatherInfo.swift
//  WCDatabase
//
//  Created by Shaun van Zitters on 2025/03/25.
//

import Foundation
import SwiftData
import WCDomain

@Model final class SwiftDataWeatherInfo {
    
    @Attribute(.unique) var id: String
    var lat: Double
    var lon: Double
    var reading: WeatherReading
    var forecast: [WeatherForecast]
    var lastUpdated: Date
    
    init(id: String,
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
