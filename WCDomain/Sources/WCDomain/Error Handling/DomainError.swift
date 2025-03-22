//
//  DomainError.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation

public enum DomainError: String, LocalizedError {
    
    case standard
    case locationAuthorization
    case locationAuthorizationDenied
    case network
    
    public var code: String {
        self.rawValue
    }
    
    public var errorDescription: String? {
        switch self {
        case .standard:
            return NSLocalizedString("error_standard", comment: "A generic error message.")
        case .locationAuthorization:
            return NSLocalizedString("error_location_authorization", comment: "Authorization to use location services could not be determined for unknown reasons.")
        case .locationAuthorizationDenied:
            return NSLocalizedString("error_location_authorization_denied", comment: "Authorization to use location services denied.")
        case .network:
            return NSLocalizedString("error_network", comment: "A general network-related error. E.g. no internet connection.")
        }
    }
}

func mapError(error: Error) -> DomainError {
    // Return a dummy error for now.
    return DomainError.standard
}
