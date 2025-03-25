//
//  WCLocationServiceWorker.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import WCDomain
import CoreLocation

public final class WCLocationServiceWorker: LocationServiceWorker {
    
    private let manager = CoreLocationManager()
    
    public init() {}
    
    public func getCurrentLocation() async throws -> (lat: Double, lon: Double) {
        try await execute {
            try await manager.getCurrentLocation()
        } errorMapper: { error in
            switch error {
            case CLError.denied:
                return DomainError.locationAuthorizationDenied
            case CLError.network:
                return DomainError.network
            default:
                return DomainError.locationAuthorization
            }
        }

    }
}
