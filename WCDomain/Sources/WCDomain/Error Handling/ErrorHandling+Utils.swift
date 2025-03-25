//
//  ErrorHandling+Utils.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public func execute<T>(block: () async throws -> T, errorMapper mapper: (Error) -> DomainError) async throws -> T {
    do {
        return try await block()
    } catch {
        // NB: URL request network errors are mapped for free, so that custom mappers can deal with more specific errors.
        if let error = error as? URLError, error.errorCode == NSURLErrorNotConnectedToInternet {
            throw DomainError.network
        }
        
        throw mapper(error)
    }
}
