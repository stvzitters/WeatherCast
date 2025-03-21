//
//  WeatherServiceWorker.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

public protocol WeatherServiceWorker {
    func findLocationInfo(cityName: String) async -> Result<[(lat: Double, lon: Double, cityName: String)], Error>
    func getReading(lat: Double, lon: Double) async -> Result<Reading, Error>
    func getForecast(lat: Double, lon: Double) async -> Result<Forecast, Error>
}
