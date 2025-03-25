//
//  ServiceFactory.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import WCDomain
import WCIntegration
import WCDatabase

struct ServiceFactory {
    static func createLocationService() -> LocationService {
        WCLocationService(worker: WCLocationServiceWorker())
    }
    
    static func createWeatherService() -> WeatherService {
        WCWeatherService(worker: WCWeatherServiceWorker(manager: APIManager()))
    }
    
    static func createWeatherDatabase() -> WeatherDatabase {
        SwiftDatabase()
    }
}
