//
//  WeatherServiceWorker.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public protocol WeatherServiceWorker: Sendable {
    func findLocationInfo(cityName: String) async throws -> [(lat: Double, lon: Double, cityName: String)]
    func getReading(lat: Double, lon: Double) async throws -> WeatherReading
    func getForecast(lat: Double, lon: Double) async throws -> [WeatherForecast]
}
