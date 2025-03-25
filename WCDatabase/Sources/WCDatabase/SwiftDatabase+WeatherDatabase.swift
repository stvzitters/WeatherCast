//
//  SwiftDatabase+WeatherDatabase.swift
//  WCDatabase
//
//  Created by Shaun van Zitters on 2025/03/25.
//

import WCDomain

extension SwiftDatabase: WeatherDatabase {
    public func saveWeatherInfo(_ weatherInfo: WeatherInfo) -> Result<Void, Error> {
        do {
            try saveItem(SwiftDataWeatherInfo.mapFromDomainModel(weatherInfo))
            return Result.success(())
        } catch {
            return Result.failure(error)
        }
    }
    
    public func saveWeatherInfoArray(_ weatherInfoArray: [WeatherInfo]) -> Result<Void, Error> {
        let mappedWeatherInfoArray = weatherInfoArray.map {
            SwiftDataWeatherInfo.mapFromDomainModel($0)
        }
        
        do {
            try saveItems(mappedWeatherInfoArray)
            return Result.success(())
        } catch {
            return Result.failure(error)
        }
    }
    
    public func retrieveWeatherInfoArray() -> Result<[WeatherInfo], Error> {
        do {
            let weatherInfoArray: [SwiftDataWeatherInfo] = try retrieveItems()
            return Result.success(SwiftDataWeatherInfo.mapToDomainModel(weatherInfoArray))
        } catch {
            return Result.failure(error)
        }
    }
    
    public func deleteWeatherInfo(_ weatherInfo: WeatherInfo) -> Result<Void, Error> {
        do {
            try deleteItem(SwiftDataWeatherInfo.mapFromDomainModel(weatherInfo))
            return Result.success(())
        } catch {
            return Result.failure(error)
        }
    }
}
