//
//  WCWeatherServiceWorker.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation
import WCDomain

public final class WCWeatherServiceWorker: WeatherServiceWorker {
    
    private let manager: APIManager
    
    /// **IMPORTANT:** The API key should normally not be kept here. Rather retrieve the API key via CloudKit or a backend service.
    private let apiKey: String = "6c2c8a4c9fc0f94771ef5add4cae6a1e"
    
    public init(manager: APIManager) {
        self.manager = manager
    }
    
    public func findLocationInfo(cityName: String) async throws -> [(lat: Double, lon: Double, cityName: String)] {
        try await execute {
            let parameters = [
                Parameters.apiKey: apiKey,
                Parameters.cityName: cityName,
                Parameters.units: "metric"
            ]
            
            let responseData = try await manager.performRequest(urlString: EndPoints.locationCoordinates, parameters: parameters)
            return try mapToDomainLocationInfo(data: responseData)
        } errorMapper: { error in
            DomainError.locationCoordinates
        }
    }
    
    public func getReading(lat: Double, lon: Double) async throws -> WeatherReading {
        try await execute {
            let parameters = [
                Parameters.apiKey: apiKey,
                Parameters.lat: String(lat),
                Parameters.lon: String(lon),
                Parameters.units: "metric",
            ]
            
            let responseData = try await manager.performRequest(urlString: EndPoints.currentWeather, parameters: parameters)
            return try mapToDomainReading(data: responseData)
        } errorMapper: { error in
            DomainError.weatherReading
        }
    }
    
    public func getForecast(lat: Double, lon: Double) async throws -> [WeatherForecast] {
        try await execute {
            let parameters = [
                Parameters.apiKey: apiKey,
                Parameters.lat: String(lat),
                Parameters.lon: String(lon),
                Parameters.units: "metric",
                
                // Ensure that there are enough timestamps for a 5-day forecast.
                // The default value, whatever it is, does not seem to be enough when requesting at 00:05AM.
                // 1 day = 8 x 3-hour intervals, therefore 5 days = 40 3-hour intervals and added an extra 10 for safety.
                Parameters.numberOfTimestamps: "50",
            ]
            
            let responseData = try await manager.performRequest(urlString: EndPoints.weather5DayForecast, parameters: parameters)
            return try mapToDomainForecasts(data: responseData)
        } errorMapper: { error in
            DomainError.weatherForecast
        }
    }
}
