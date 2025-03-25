//
//  OpenWeatherTemperatureInfo.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation

struct OpenWeatherTemperatureInfo {
    let current: Double
    let min: Double
    let max: Double
}

extension OpenWeatherTemperatureInfo: Codable {
    private enum CodingKeys: String, CodingKey {
        case current = "temp"
        case min = "temp_min"
        case max = "temp_max"
    }
}
