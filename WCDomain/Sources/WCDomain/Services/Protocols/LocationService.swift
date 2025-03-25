//
//  LocationService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

import Foundation

public protocol LocationService: Sendable {
    func getCurrentLocation() async -> Result<(lat: Double, lon: Double), Error>
}
