//
//  CoreLocationManager.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import WCDomain
@preconcurrency import CoreLocation

final class CoreLocationManager: NSObject, Sendable {
    private let locationManager = CLLocationManager()
    
    @MainActor private var continuation: CheckedContinuation<(lat: Double, lon: Double), Error>?
    @MainActor private var didResumeContinuation: Bool = false
    
    func getCurrentLocation() async throws -> (lat: Double, lon: Double) {
        try await withCheckedThrowingContinuation { [weak self] cont in
            guard let self = self else { return }
            
            Task { @MainActor in
                self.continuation = cont
                self.locationManager.delegate = self
                
                switch self.locationManager.authorizationStatus {
                case .authorizedWhenInUse:
                    locationManager.startUpdatingLocation()
                default:
                    self.locationManagerDidChangeAuthorization(self.locationManager)
                }
                
            }
        }
    }
    
    func resumeContinuation(withLocation location: (lat: Double, lon: Double)) {
        Task { @MainActor in
            guard !didResumeContinuation else { return }
            continuation?.resume(returning: (lat: location.lat, lon: location.lon))
            didResumeContinuation = true
        }
    }
    
    func resumeContinuation(withError error: DomainError) {
        Task { @MainActor in
            guard !didResumeContinuation else { return }
            continuation?.resume(throwing: error)
            didResumeContinuation = true
        }
    }
}

extension CoreLocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        Task { @MainActor in
            switch manager.authorizationStatus {
            case .authorizedWhenInUse:
                locationManager.startUpdatingLocation()
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted, .denied:
                resumeContinuation(withError: DomainError.locationAuthorizationDenied)
            default:
                resumeContinuation(withError: DomainError.locationAuthorization)
            }
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        Task { @MainActor in
            guard let location = locations.first else { return }
            resumeContinuation(withLocation: (lat: location.coordinate.latitude, lon: location.coordinate.longitude))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        switch error {
        case CLError.denied:
            resumeContinuation(withError: DomainError.locationAuthorizationDenied)
        case CLError.network:
            resumeContinuation(withError: DomainError.network)
        default:
            resumeContinuation(withError: DomainError.locationAuthorization)
        }
    }
}
