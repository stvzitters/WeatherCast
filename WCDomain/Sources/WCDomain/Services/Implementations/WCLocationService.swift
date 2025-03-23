//
//  WCLocationService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct WCLocationService: Sendable, LocationService {
    
    private let worker: LocationServiceWorker
    
    public init(worker: LocationServiceWorker) {
        self.worker = worker
    }
    
    public func getCurrentLocation() async -> Result<(lat: Double, lon: Double), any Error> {
        do {
            return Result.success(try await worker.getCurrentLocation())
        } catch {
            return Result.failure(error)
        }
    }
}
