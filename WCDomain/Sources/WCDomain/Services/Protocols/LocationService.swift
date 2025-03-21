//
//  LocationService.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/21.
//

public protocol LocationService {
    func getCurrentLocation() async -> Result<(lat: Double, lon: Double), Error>
}
