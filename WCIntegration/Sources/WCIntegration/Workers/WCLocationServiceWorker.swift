//
//  WCLocationServiceWorker.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import WCDomain

public struct WCLocationServiceWorker: LocationServiceWorker {
    private let manager = CoreLocationManager()
    
    public init() {}
    
    public func getCurrentLocation() async throws -> (lat: Double, lon: Double) {
        try await manager.getCurrentLocation()
    }
}
