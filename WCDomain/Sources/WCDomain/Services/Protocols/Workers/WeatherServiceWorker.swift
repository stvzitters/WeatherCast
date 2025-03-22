//
//  WeatherServiceWorker.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

public protocol WeatherServiceWorker: Sendable {
    func findLocationInfo(cityName: String) async throws -> [(lat: Double, lon: Double, cityName: String)]
    func getReading(lat: Double, lon: Double) async throws -> Reading
    func getForecast(lat: Double, lon: Double) async throws -> Forecast
}
