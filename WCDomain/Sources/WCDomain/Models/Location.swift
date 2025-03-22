//
//  Location.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct Location: Codable, Identifiable {
    public let id: String
    public let lat: String
    public let lon: String
    public let name: String
    public var reading: Reading?
    public var forecast: [Forecast]?
    public var lastUpdated: Date?
    
    public init(lat: String, lon: String, name: String) {
        self.id = UUID().uuidString
        self.lat = lat
        self.lon = lon
        self.name = name
    }
}
