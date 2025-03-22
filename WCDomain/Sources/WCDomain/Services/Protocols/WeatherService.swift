//
//  WeatherService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

public protocol WeatherService {
    func findLocationInfo(cityName: String) async -> Result<[(lat: Double, lon: Double, cityName: String)], Error>
    func getWeather(lat: Double, lon: Double) async -> Result<(reading: Reading, forecast: Forecast), Error>
}
