//
//  WeatherCondition.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public enum WeatherCondition: String, Codable, Sendable {
    case rain
    case clouds
    case clear
    case unsupported
}
