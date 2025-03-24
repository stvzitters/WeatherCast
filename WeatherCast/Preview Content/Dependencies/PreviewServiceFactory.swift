//
//  PreviewServiceFactory.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import WCDomain

struct PreviewServiceFactory {
    static func createLocationService() -> LocationService {
        WCLocationService(worker: PreviewLocationServiceWorker())
    }
    
    static func createWeatherService() -> WeatherService {
        WCWeatherService(worker: PreviewWeatherServiceWorker())
    }
}
