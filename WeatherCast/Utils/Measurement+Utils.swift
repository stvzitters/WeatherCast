//
//  Measurement+Utils.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import Foundation

extension Measurement {
    static func convert(temperature: Double, toUnit: UnitTemperature) -> String {
        let measurement  = Measurement<UnitTemperature>(value: temperature, unit: toUnit)
        
        let measurementFormatter = MeasurementFormatter()
        measurementFormatter.unitStyle = .short
        measurementFormatter.numberFormatter.maximumFractionDigits = 0
        measurementFormatter.unitOptions = .temperatureWithoutUnit

        return measurementFormatter.string(from: measurement)
    }
}
