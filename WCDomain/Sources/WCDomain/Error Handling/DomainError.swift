//
//  DomainError.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation

public enum DomainError: String, LocalizedError {
    
    case standard = "sample_error_code"
    
    public var code: String {
        self.rawValue
    }
    
    public var errorDescription: String? {
        switch self {
        case .standard:
            return NSLocalizedString("error_standard", comment: "A generic error message.")
        }
    }
}

func mapError(error: Error) -> DomainError {
    
    // Return a dummy error for now.
    return DomainError.standard
}
