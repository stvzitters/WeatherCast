//
//  WCWeatherService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public final class WCWeatherService: Sendable, WeatherService {
    
    private let worker: WeatherServiceWorker
    
    public init(worker: WeatherServiceWorker) {
        self.worker = worker
    }
    
    public func findLocationInfo(cityName: String) async -> Result<[(lat: Double, lon: Double, cityName: String)], any Error> {
        do {
            return Result.success(try await worker.findLocationInfo(cityName: cityName))
        } catch {
            return Result.failure(DomainError.validate(error: error))
        }
    }
    
    public func getWeather(lat: Double, lon: Double) async -> Result<(reading: WeatherReading, forecast: [WeatherForecast]), any Error> {
        do {
            async let reading = try worker.getReading(lat: lat, lon: lon)
            async let forecasts = try worker.getForecast(lat: lat, lon: lon)
            
            return Result.success((reading: try await reading, forecast: try await forecasts))
        } catch {
            return Result.failure(DomainError.validate(error: error))
        }
    }
}
