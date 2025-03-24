//
//  WeatherHeaderView.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import SwiftUI

struct WeatherHeaderView: View {
    
    let backgroundImage: ImageResource?
    let cityName: String
    let currentTemp: String
    let weatherConditionsText: String
    
    var body: some View {
        VStack {
            if let backgroundImage {
                Image(backgroundImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Color(.clear)
            }
        }
        .overlay(alignment: .center) {
            VStack {
                Text(cityName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(currentTemp)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(weatherConditionsText)
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    WeatherHeaderView(backgroundImage: .backgroundClear,
                      cityName: "Wellington",
                      currentTemp: Measurement.convert(temperature: 25, toUnit: .celsius),
                      weatherConditionsText: "Sunny")
}
