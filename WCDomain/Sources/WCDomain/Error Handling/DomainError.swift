//
//  DomainError.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation

public enum DomainError: LocalizedError {
    
    case standard
    case locationAuthorization
    case locationAuthorizationDenied
    case locationCoordinates
    case weatherReading
    case weatherForecast
    case network
    
    public var code: String {
        switch self {
        case .standard:
            return "code_standard"
        case .locationAuthorization:
            return "code_locationAuthorization"
        case .locationAuthorizationDenied:
            return "code_locationAuthorizationDenied"
        case .locationCoordinates:
            return "code_locationCoordinates"
        case .weatherReading:
            return "code_weatherReading"
        case .weatherForecast:
            return "code_weatherForecast"
        case .network:
            return "code_network"
        }
    }
    
    public var errorDescription: String? {
        switch self {
        case .standard:
            return NSLocalizedString("error_standard", bundle: Bundle.module, comment: "A generic error message.")
        case .locationAuthorization:
            return NSLocalizedString("error_location_authorization", bundle: Bundle.module, comment: "Authorization to use location services could not be determined for unknown reasons.")
        case .locationAuthorizationDenied:
            return NSLocalizedString("error_location_authorization_denied", bundle: Bundle.module, comment: "Authorization to use location services denied.")
        case .locationCoordinates:
            return NSLocalizedString("error_location_coordinates", bundle: Bundle.module, comment: "Could not retrieve location coordinates.")
        case .weatherReading:
            return NSLocalizedString("error_weather_reading", bundle: Bundle.module, comment: "Could not retrieve weather reading.")
        case .weatherForecast:
            return NSLocalizedString("error_weather_forecast", bundle: Bundle.module, comment: "Could not retrieve weather forecast.")
        case .network:
            return NSLocalizedString("error_network", bundle: Bundle.module, comment: "A general network-related error. E.g. no internet connection.")
        }
    }
    
    static func validate(error: Error) -> DomainError {
        return error as? DomainError ?? .standard
    }
}
