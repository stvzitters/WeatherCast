//
//  PreviewLocationServiceWorker.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import WCDomain

struct PreviewLocationServiceWorker: LocationServiceWorker {
    func getCurrentLocation() async throws -> (lat: Double, lon: Double) {
        (lat: -33.715546, lon: 18.966248)
    }
}
