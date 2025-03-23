//
//  OpenWeatherCoordinate.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation

struct OpenWeatherCoordinate {
    let name: String
    let state: String
    let country: String
    let lat: Double
    let lon: Double
    
    static func mapToDomainModelArray(coordinates: [OpenWeatherCoordinate]) -> [(lat: Double, lon: Double, cityName: String)] {
        coordinates.map { coordinate in
            (lat: coordinate.lat,
             lon: coordinate.lon,
             cityName: "\(coordinate.name), \(coordinate.state), \(coordinate.country)")
        }
    }
}

extension OpenWeatherCoordinate: Codable {
    private enum CodingKeys: String, CodingKey {
        case name
        case state
        case country
        case lat
        case lon
    }
}
