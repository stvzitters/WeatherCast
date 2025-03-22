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
        throw mapper(error)
    }
}
