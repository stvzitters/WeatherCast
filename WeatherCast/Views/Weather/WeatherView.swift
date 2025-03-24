//
//  WeatherView.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import SwiftUI
import WCDomain

struct WeatherView: View {
    
    @State private var viewModel: ViewModel
    
    init(viewModel: ViewModel = ViewModel()) {
        self._viewModel = .init(wrappedValue: viewModel)
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if viewModel.didRetrieveWeather && viewModel.error == nil {
                    WeatherHeaderView(backgroundImage: viewModel.backgroundImage,
                                      cityName: viewModel.cityName,
                                      currentTemp: viewModel.currentTemp,
                                      weatherConditionsText: viewModel.weatherConditionsText)
                    
                    ScrollView {
                        WeatherSummaryView(currentTemp: viewModel.currentTemp,
                                           minTemp: viewModel.minTemp,
                                           maxTemp: viewModel.maxTemp)
                        
                        divider
                        
                        WeatherForecastView(forecasts: viewModel.forecasts)
                    }
                } else if viewModel.didRetrieveWeather && viewModel.error != nil {
                    Text(viewModel.error?.localizedDescription ?? DomainError.standard.localizedDescription)
                        .font(.headline)
                        .foregroundStyle(.foreground)
                } else {
                    progressView
                }
            }
            .ignoresSafeArea(.all, edges: .top)
            .background(viewModel.backgroundColor)
            .task {
                await viewModel.getWeather()
            }
        }
    }
    
    private var divider: some View {
        VStack {
            Color.white
                .frame(height: 2)
            
            Spacer()
                .frame(height: 16)
        }
    }
    
    private var progressView: some View {
        ProgressView("Retrieving Weather Information")
            .font(.title3)
            .foregroundStyle(.foreground)
    }
}

#Preview {
    let locationService = PreviewServiceFactory.createLocationService()
    let weatherService = PreviewServiceFactory.createWeatherService()
    let viewModel = WeatherView.ViewModel(locationService: locationService, weatherService: weatherService)
    
    WeatherView(viewModel: viewModel)
}
