//
//  WeatherForecastsDataMappingTests.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/26.
//

import Testing
import Foundation
@testable import WCIntegration

struct WeatherForecastsDataMappingTests {
    @Test func testDataMappingSuccess() async throws {
        let data = try #require(validWeatherForecastJSON.data(using: .utf8))
        #expect(try WCWeatherServiceWorker.mapToDomainForecasts(data: data) != nil)
    }

    @Test func testDataMappingFailure() async throws {
        try #require(performing: {
            let data = try #require(invalidJSON.data(using: .utf8))
            _ = try WCWeatherServiceWorker.mapToDomainForecasts(data: data)
        }, throws: { error in
            guard let error = error as? DecodingError else {
                return false
            }
            
            switch error {
            case .keyNotFound:
                return true
            default:
                return false
            }
        })
    }
}
