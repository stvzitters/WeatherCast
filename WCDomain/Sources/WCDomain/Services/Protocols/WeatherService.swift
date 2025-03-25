//
//  WeatherService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public protocol WeatherService: Sendable {
    func getWeather(lat: Double, lon: Double) async -> Result<(reading: WeatherReading, forecast: [WeatherForecast]), Error>
}
