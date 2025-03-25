//
//  SwiftDataWeatherInfo+DomainMapping.swift
//  WCDatabase
//
//  Created by Shaun van Zitters on 2025/03/25.
//

import WCDomain

extension SwiftDataWeatherInfo {
    static func mapFromDomainModel(_ weatherInfo: WeatherInfo) -> SwiftDataWeatherInfo {
        SwiftDataWeatherInfo(id: weatherInfo.id,
                             lat: weatherInfo.lat,
                             lon: weatherInfo.lon,
                             reading: weatherInfo.reading,
                             forecast: weatherInfo.forecast,
                             lastUpdated: weatherInfo.lastUpdated)
    }
    
    func mapToDomainModel() -> WeatherInfo {
        WeatherInfo(id: id,
                    lat: lat,
                    lon: lon,
                    reading: reading,
                    forecast: forecast,
                    lastUpdated: lastUpdated)
    }
    
    static func mapToDomainModel(_ weatherInfoArray: [SwiftDataWeatherInfo]) -> [WeatherInfo] {
        weatherInfoArray.map {
            WeatherInfo(id: $0.id,
                        lat: $0.lat,
                        lon: $0.lon,
                        reading: $0.reading,
                        forecast: $0.forecast,
                        lastUpdated: $0.lastUpdated)
        }
        
    }
}
