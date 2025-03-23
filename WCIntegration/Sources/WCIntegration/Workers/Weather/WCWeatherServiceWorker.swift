//
//  WCWeatherServiceWorker.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation
import WCDomain

public struct WCWeatherServiceWorker: WeatherServiceWorker {
    
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
            // Note: No specific error mapping done at this points. For future reference.
            DomainError.standard
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
            // Note: No specific error mapping done at this points. For future reference.
            DomainError.standard
        }
    }
    
    public func getForecast(lat: Double, lon: Double) async throws -> [WeatherForecast] {
        try await execute {
            let parameters = [
                Parameters.apiKey: apiKey,
                Parameters.lat: String(lat),
                Parameters.lon: String(lon),
                Parameters.units: "metric",
            ]
            
            let responseData = try await manager.performRequest(urlString: EndPoints.weather5DayForecast, parameters: parameters)
            return try mapToDomainForecasts(data: responseData)
        } errorMapper: { error in
            // Note: No specific error mapping done at this points. For future reference.
            DomainError.standard
        }
    }
}
