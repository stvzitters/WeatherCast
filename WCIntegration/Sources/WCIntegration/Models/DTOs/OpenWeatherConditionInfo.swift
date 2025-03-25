//
//  OpenWeatherConditionInfo.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation

struct OpenWeatherConditionInfo {
    let main: String
    var weatherCondition: OpenWeatherCondition {
        OpenWeatherCondition(rawValue: main.lowercased()) ?? .unsupported
    }
}

extension OpenWeatherConditionInfo: Codable {
    private enum CodingKeys: String, CodingKey {
        case main
    }
}
