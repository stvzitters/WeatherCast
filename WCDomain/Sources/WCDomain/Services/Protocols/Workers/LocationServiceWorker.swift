//
//  LocationServiceWorker.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public protocol LocationServiceWorker: Sendable {
    func getCurrentLocation() async throws -> (lat: Double, lon: Double)
}
