//
//  WCLocationService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

public struct WCLocationService {
    private let worker: LocationServiceWorker
    
    public init(worker: LocationServiceWorker) {
        self.worker = worker
    }
}

extension WCLocationService: LocationService {
    public func getCurrentLocation() async -> Result<(lat: Double, lon: Double, cityName: String), any Error> {
        await worker.getCurrentLocation()
    }
}
