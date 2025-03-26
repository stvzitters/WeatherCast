//
//  WCWeatherServiceWorker+DomainMapping.swift
//  WCIntegration
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation
import WCDomain

extension WCWeatherServiceWorker {
    
    /// Map an OpenWeather reading to the corresponding domain layer model.
    static func mapToDomainReading(data: Data) throws -> WeatherReading {
        try JSONDecoder().decode(OpenWeatherReading.self, from: data).mapToDomainModel()
    }
    
    /// Map an array of OpenWeather forecasts to an array of the corresponding domain layer models.
    static func mapToDomainForecasts(data: Data) throws -> [WeatherForecast] {
        let openWeatherForecast: OpenWeatherForecastList = try JSONDecoder()
            .withDateFormat(JSONDecoder.openWeatherDateFormat)
            .decode(OpenWeatherForecastList.self, from: data)
        
        var forecasts: [WeatherForecast] = []
        
        /*
         Several forecasts are received for a given day, but we only need one for each day.
         
         Group the forecasts by weekday and do the following for each group:
         - Max Temperature: Sort the forecasts by max temperature in descending order - take the first one.
         - Priority Weather Condition: Sort the forecasts by weather condition priority in descending order - take the first one.
         - Date: Take the first forecast. Only the weekday will eventually be used, so the exact date does not matter.
         */
        for (_, value) in Dictionary(grouping: openWeatherForecast.list, by: { $0.date.weekday }) {
            guard let maxTemp = WCWeatherServiceWorker.getMaxTemp(forecasts: value) else {
                continue
            }
            guard let condition = try WCWeatherServiceWorker.getPriorityCondition(forecasts: value) else {
                continue
            }
            guard let date = value.first?.date else {
                continue
            }
            
            forecasts.append(WeatherForecast(date: date,
                                             maxTemp: maxTemp,
                                             condition: condition.mapToDomainModel()))
        }
        
        // Remove any forecasts for the current day. Only for the NEXT n days.
        forecasts.removeAll {
            $0.date.weekday == Date().weekday
        }
        
        // The forecasts were grouped by weekday into a dictionary and no longer chronologically sorted.
        return forecasts.sorted {
            $0.date < $1.date
        }
    }
    
    private static func getMaxTemp(forecasts: [OpenWeatherForecast]) -> Double? {
        forecasts.sorted {
            $0.temperatureInfo.max > $1.temperatureInfo.max
        }.first?.temperatureInfo.max
    }
    
    private static func getPriorityCondition(forecasts: [OpenWeatherForecast]) throws -> OpenWeatherCondition? {
        return try forecasts.sorted {
            guard let element1 = $0.weatherInfo.first else {
                throw IntegrationError.dataMapping
            }
            guard let element2 = $1.weatherInfo.first else {
                throw IntegrationError.dataMapping
            }
            
            return element1.weatherCondition.priority > element2.weatherCondition.priority
        }.first?.weatherInfo.first?.weatherCondition
    }
}
