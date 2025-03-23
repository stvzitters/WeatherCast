//
//  APIManager.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/22.
//

import Foundation
import WCDomain

public struct APIManager: Sendable {
    private let urlSession: URLSession
    
    public init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }
    
    func performRequest(urlString: String, parameters: [String: String]) async throws -> Data {
        guard var urlComponents = URLComponents(string: urlString) else {
            throw DomainError.standard
        }
        
        urlComponents.queryItems = parameters.map {
            URLQueryItem(name: $0, value: $1)
        }
        
        guard let url = urlComponents.url else {
            throw DomainError.standard
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = HTTPMethod.get.rawValue
        
        // NB: Only supporting the JSON content type. Support for additional content types can be implemented if required.
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let (responseData, _) = try await URLSession.shared.data(for: request)
        
        return responseData
    }
}
