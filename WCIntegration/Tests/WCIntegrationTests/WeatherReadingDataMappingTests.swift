import Testing
import Foundation
@testable import WCIntegration

struct WeatherReadingDataMappingTests {
    @Test func testDataMappingSuccess() async throws {
        let data = try #require(validWeatherReadingJSON.data(using: .utf8))
        #expect(try WCWeatherServiceWorker.mapToDomainReading(data: data) != nil)
    }

    @Test func testDataMappingFailure() async throws {
        try #require(performing: {
            let data = try #require(invalidJSON.data(using: .utf8))
            _ = try WCWeatherServiceWorker.mapToDomainReading(data: data)
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
