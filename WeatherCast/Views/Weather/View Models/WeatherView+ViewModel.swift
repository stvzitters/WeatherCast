//
//  WeatherView+ViewModel.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import SwiftUI
import WCDomain

extension WeatherView {
    @MainActor @Observable final class ViewModel {
        
        // MARK: Services
        
        private let locationService: LocationService
        private let weatherService: WeatherService
        
        // MARK: Observable Properties
        
        var cityName: String = ""
        var currentTemp: String = ""
        var minTemp: String = ""
        var maxTemp: String = ""
        var forecasts: [WeatherForecast] = []
        var weatherConditions: WeatherCondition = .unsupported
        var weatherConditionsText: String = ""
        var backgroundColor: Color {
            switch weatherConditions {
            case .rain:
                return .wcRain
            case .clouds:
                return .wcClouds
            case .clear:
                return .wcClear
            default:
                return .wcUnsupported
            }
        }
        var backgroundImage: ImageResource? {
            switch weatherConditions {
            case .rain:
                return .backgroundRain
            case .clouds:
                return .backgroundClouds
            case .clear:
                return .backgroundClear
            default:
                return nil
            }
        }
        var didRetrieveWeather: Bool = false
        var error: DomainError?
        
        // MARK: Initializer
        
        init(locationService: LocationService = ServiceFactory.createLocationService(),
             weatherService: WeatherService = ServiceFactory.createWeatherService()) {
            self.locationService = locationService
            self.weatherService = weatherService
        }
        
        // MARK: Data Retrieval
        
        func getWeather() async {
            do {
                let location = try await locationService.getCurrentLocation().get()
                let currentWeather = try await weatherService.getWeather(lat: location.lat, lon: location.lon).get()
                
                cityName = currentWeather.reading.cityName.capitalized
                weatherConditions = currentWeather.reading.condition
                weatherConditionsText = setWeatherConditionText(weatherCondition: currentWeather.reading.condition)
                currentTemp = Measurement.convert(temperature: currentWeather.reading.currentTemp, toUnit: .celsius)
                minTemp = Measurement.convert(temperature: currentWeather.reading.minTemp, toUnit: .celsius)
                maxTemp = Measurement.convert(temperature: currentWeather.reading.maxTemp, toUnit: .celsius)
                forecasts = currentWeather.forecast
            } catch {
                self.error = error as? DomainError
            }
            
            didRetrieveWeather = true
        }
        
        // MARK: Convenience
        
        private func setWeatherConditionText(weatherCondition: WeatherCondition) -> String {
            switch weatherCondition {
            case .clear:
                return "Sunny"
            case .clouds:
                return "Cloudy"
            case .rain:
                return "Rainy"
            default:
                return "-"
            }
        }
    }
}
