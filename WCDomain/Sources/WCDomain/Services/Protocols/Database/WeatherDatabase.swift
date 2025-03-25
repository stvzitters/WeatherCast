//
//  WeatherDatabase.swift
//  WCDomain
//
//  Created by Shaun van Zitters on 2025/03/25.
//

public protocol WeatherDatabase {
    @discardableResult func saveWeatherInfo(_ weatherInfo: WeatherInfo) -> Result<Void, Error>
    @discardableResult func saveWeatherInfoArray(_ weatherInfoArray: [WeatherInfo]) -> Result<Void, Error>
    func retrieveWeatherInfoArray() -> Result<[WeatherInfo], Error>
    func deleteWeatherInfo(_ weatherInfo: WeatherInfo) -> Result<Void, Error>
}
