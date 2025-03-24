//
//  PreviewWeatherServiceWorker.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import WCDomain

struct PreviewWeatherServiceWorker: WeatherServiceWorker {
    func findLocationInfo(cityName: String) async throws -> [(lat: Double, lon: Double, cityName: String)] {
        [(-33.918861, 18.423300, "Cape Town")]
    }
    
    func getReading(lat: Double, lon: Double) async throws -> WeatherReading {
        WeatherReading(cityName: "Cape Town", currentTemp: 25, minTemp: 19, maxTemp: 28, condition: .clear)
    }
    
    func getForecast(lat: Double, lon: Double) async throws -> [WeatherForecast] {
        PreviewWeatherServiceWorker.generateForecastData()
    }
    
    static func generateForecastData() -> [WeatherForecast] {
        let calendar = Calendar.current
        let date = Date()
        let components = calendar.dateComponents(
            [.hour, .minute, .second, .nanosecond],
            from: Date()
        )

        let nextDay0 = calendar.nextDate(
            after: date,
            matching: components,
            matchingPolicy: .nextTime
        ) ?? Date()
        
        let nextDay1 = calendar.nextDate(
            after: nextDay0,
            matching: components,
            matchingPolicy: .nextTime
        ) ?? Date()
        
        let nextDay2 = calendar.nextDate(
            after: nextDay1,
            matching: components,
            matchingPolicy: .nextTime
        ) ?? Date()
        
        let nextDay3 = calendar.nextDate(
            after: nextDay2,
            matching: components,
            matchingPolicy: .nextTime
        ) ?? Date()
        
        let nextDay4 = calendar.nextDate(
            after: nextDay3,
            matching: components,
            matchingPolicy: .nextTime
        ) ?? Date()
        
        return [
            WeatherForecast(date: nextDay0, maxTemp: 30, condition: .clear),
            WeatherForecast(date: nextDay1, maxTemp: 25, condition: .clouds),
            WeatherForecast(date: nextDay2, maxTemp: 23, condition: .clouds),
            WeatherForecast(date: nextDay3, maxTemp: 20, condition: .rain),
            WeatherForecast(date: nextDay4, maxTemp: 19, condition: .rain)
        ]
    }
}
