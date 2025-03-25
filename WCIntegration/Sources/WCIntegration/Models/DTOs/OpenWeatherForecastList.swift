//
//  OpenWeatherForecastList.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation

struct OpenWeatherForecastList {
    let list: [OpenWeatherForecast]
}

extension OpenWeatherForecastList: Codable {
    private enum CodingKeys: String, CodingKey {
        case list
    }
}
