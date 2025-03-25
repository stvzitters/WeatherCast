//
//  OpenWeatherCondition.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import WCDomain

public enum OpenWeatherCondition: String, Codable, Sendable {
    case rain
    case clouds
    case clear
    case thunderstorm
    case drizzle
    case snow
    case mist
    case smoke
    case haze
    case fog
    case sand
    case dust
    case ash
    case squall
    case tornado
    case unsupported
    case unavailable
    
    
    /// The priority of a WeatherCondition determines how weather condition forecasts are presented.
    /// Weather forecasts for a particular period (e.g. 5 days) are provided with a 3-hour step, thus providing more than one forecast for a particular day.
    /// As a result, the priority value determines which forecasted weather condition is chosen as the forecast for the entire day.
    public var priority: Int {
        switch self {
        case .clear:
            return 1
        case .clouds:
            return 2
        case .drizzle:
            return 3
        case .rain:
            return 4
        case .thunderstorm:
            return 5
        default:
            return 0
        }
    }
    
    func mapToDomainModel() -> WeatherCondition {
        switch self {
        case .clear:
            return WeatherCondition.clear
        case .clouds:
            return WeatherCondition.clouds
        case .rain:
            return WeatherCondition.rain
        default:
            return WeatherCondition.unsupported
        }
    }
}
