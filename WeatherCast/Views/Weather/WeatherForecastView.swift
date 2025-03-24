//
//  WeatherForecastView.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import SwiftUI
import WCDomain

struct WeatherForecastView: View {
    
    @State private var viewModel: ViewModel
    private let forecasts: [WeatherForecast]
    
    init(viewModel: ViewModel = ViewModel(), forecasts: [WeatherForecast]) {
        self._viewModel = .init(wrappedValue: viewModel)
        self.forecasts = forecasts
    }
    
    var body: some View {
        ForEach(forecasts) { forecast in
            HStack (spacing: 0) {
                Text(forecast.date.weekday)
                    .padding(.leading, 8)
                    .containerRelativeFrame(.horizontal, alignment: .leading) { length, axis in
                        length / 3.0
                    }
                
                viewModel.getConditionIconImage(forCondition: forecast.condition)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32, height: 32)
                    .containerRelativeFrame(.horizontal, alignment: .center) { length, axis in
                        length / 3.0
                    }
                
                Text(Measurement.convert(temperature: forecast.maxTemp, toUnit: .celsius))
                    .padding(.trailing, 8)
                    .containerRelativeFrame(.horizontal, alignment: .trailing) { length, axis in
                        length / 3.0
                    }
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    VStack {
        WeatherForecastView(forecasts: PreviewWeatherServiceWorker.generateForecastData())
    }
    .background(.wcClouds)
}
