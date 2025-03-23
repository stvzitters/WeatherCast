//
//  OpenWeatherForecast.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation

struct OpenWeatherForecast {
    let temperatureInfo: OpenWeatherTemperatureInfo
    let weatherInfo: [OpenWeatherConditionInfo]
    let date: Date
}

extension OpenWeatherForecast: Codable {
    private enum CodingKeys: String, CodingKey {
        case temperatureInfo = "main"
        case weatherInfo = "weather"
        case date = "dt_txt"
    }
}
