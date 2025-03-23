//
//  OpenWeatherReading.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation
import WCDomain

struct OpenWeatherReading {
    let cityName: String
    let temperatureInfo: OpenWeatherTemperatureInfo
    let weatherInfo: [OpenWeatherConditionInfo]
    var weatherCondition: OpenWeatherCondition {
        weatherInfo.first?.weatherCondition ?? .notFound
    }
    
    /// Map to the corresponding domain layer model.
    func mapToDomainModel() -> WeatherReading {
        WeatherReading(cityName: cityName,
                       currentTemp: temperatureInfo.current,
                       minTemp: temperatureInfo.min,
                       maxTemp: temperatureInfo.max,
                       condition: weatherCondition.mapToDomainModel())
    }
}

extension OpenWeatherReading: Codable {
    private enum CodingKeys: String, CodingKey {
        case cityName = "name"
        case temperatureInfo = "main"
        case weatherInfo = "weather"
    }
}
