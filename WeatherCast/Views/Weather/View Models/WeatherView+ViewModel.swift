//
//  WeatherView+ViewModel.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import SwiftUI
import WCDomain
import WCDatabase

extension WeatherView {
    @MainActor @Observable final class ViewModel {
        
        private let locationService: LocationService
        private let weatherService: WeatherService
        private let weatherDatabase: WeatherDatabase
        
        var cityName: String = ""
        var currentTemp: String = ""
        var minTemp: String = ""
        var maxTemp: String = ""
        var forecasts: [WeatherForecast] = []
        var weatherConditions: WeatherCondition = .unsupported
        var didRetrieveWeather: Bool = false
        var isOffline: Bool = false
        var lastUpdated: Date?
        var error: DomainError?
        
        init(locationService: LocationService = ServiceFactory.createLocationService(),
             weatherService: WeatherService = ServiceFactory.createWeatherService(),
             weatherDatabase: WeatherDatabase = ServiceFactory.createWeatherDatabase()) {
            self.locationService = locationService
            self.weatherService = weatherService
            self.weatherDatabase = weatherDatabase
        }
        
        func getWeather() async {
            do {
                error = nil
                isOffline = false
                
                let location = try await locationService.getCurrentLocation().get()
                let weatherInfo = try await weatherService.getWeather(lat: location.lat, lon: location.lon).get()
                
                setWeatherInfo(weatherInfo)
                saveWeatherInfo(lat: location.lat, lon: location.lon, reading: weatherInfo.reading, forecast: weatherInfo.forecast)
            } catch {
                handleError(error)
            }
            
            didRetrieveWeather = true
        }
        
        private func handleError(_ error: Error) {
            guard let error = error as? DomainError else {
                self.error = DomainError.standard
                return
            }
            
            if error == DomainError.network {
                self.isOffline = true
                self.error = getSavedWeatherInfo()
            } else {
                self.error = error
            }
        }
        
        private func getSavedWeatherInfo() -> DomainError? {
            guard let weatherInfo = try? weatherDatabase.retrieveWeatherInfoArray().get().first else {
                // NB: Display network error if network and saved weather info is not available.
                return DomainError.network
            }
            
            setWeatherInfo((reading: weatherInfo.reading, forecast: weatherInfo.forecast))
            lastUpdated = weatherInfo.lastUpdated
            return nil
        }
        
        private func saveWeatherInfo(lat: Double, lon: Double, reading: WeatherReading, forecast: [WeatherForecast]) {
            // NB: Use "current_location" for the user's current location id, to prevent creating a new database entry each time.
            _ = weatherDatabase.saveWeatherInfo(WeatherInfo(id: "current_location",
                                                            lat: lat,
                                                            lon: lon,
                                                            reading: reading,
                                                            forecast: forecast,
                                                            lastUpdated: Date()))
            
            // TODO: Decide what to do if weather info could not be saved for offline use.
        }
        
        private func setWeatherInfo(_ weatherInfo: (reading: WeatherReading, forecast: [WeatherForecast])) {
            cityName = weatherInfo.reading.cityName.capitalized
            weatherConditions = weatherInfo.reading.condition
            currentTemp = Measurement.convert(temperature: weatherInfo.reading.currentTemp, toUnit: .celsius)
            minTemp = Measurement.convert(temperature: weatherInfo.reading.minTemp, toUnit: .celsius)
            maxTemp = Measurement.convert(temperature: weatherInfo.reading.maxTemp, toUnit: .celsius)
            forecasts = weatherInfo.forecast
        }
    }
}
