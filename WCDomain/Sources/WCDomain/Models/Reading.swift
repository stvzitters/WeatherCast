//
//  Reading.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct Reading: Codable, Identifiable {
    public let id: String
    public let currentTemp: Int
    public let minTemp: Int
    public let maxTemp: Int
    public let condition: Condition
    
    public init(currentTemp: Int, minTemp: Int, maxTemp: Int, condition: Condition) {
        self.id = UUID().uuidString
        self.currentTemp = currentTemp
        self.minTemp = minTemp
        self.maxTemp = maxTemp
        self.condition = condition
    }
}
