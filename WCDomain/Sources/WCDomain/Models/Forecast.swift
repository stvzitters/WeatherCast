//
//  Forecast.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public struct Forecast: Codable {
    public let id: String
    public let maxTemp: Int
    public let condition: Condition
    
    public init(maxTemp: Int, condition: Condition) {
        self.id = UUID().uuidString
        self.maxTemp = maxTemp
        self.condition = condition
    }
}
