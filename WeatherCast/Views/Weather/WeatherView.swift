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
                    VStack {
                        ScrollView {
                            WeatherHeaderView(backgroundImage: viewModel.weatherConditions.backgroundImage,
                                              cityName: viewModel.cityName,
                                              currentTemp: viewModel.currentTemp,
                                              weatherConditionsText: viewModel.weatherConditions.text)
                            
                            WeatherSummaryView(currentTemp: viewModel.currentTemp,
                                               minTemp: viewModel.minTemp,
                                               maxTemp: viewModel.maxTemp)
                            
                            dividerView
                            
                            WeatherForecastView(forecasts: viewModel.forecasts)
                        }
                        
                        if viewModel.isOffline {
                            offlineView
                        }
                    }
                    .background(viewModel.weatherConditions.backgroundColor)
                } else if viewModel.didRetrieveWeather && viewModel.error != nil {
                    errorView
                } else {
                    progressView
                }
            }
            .ignoresSafeArea(edges: .top)
            .task {
                await viewModel.getWeather()
            }
        }
    }
    
    private var dividerView: some View {
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
    
    private var offlineView: some View {
        VStack {
            Image(systemName: "wifi.exclamationmark")
            
            if let lastUpdated = viewModel.lastUpdated {
                Text("Last Updated")
                Text(lastUpdated.formatted(date: .abbreviated, time: .shortened))
            }
        }
        .font(.footnote)
        .foregroundStyle(.white)
    }
    
    private var errorView: some View {
        Text(viewModel.error?.localizedDescription ?? DomainError.standard.localizedDescription)
            .font(.headline)
            .foregroundStyle(.foreground)
    }
}

#Preview {
    let locationService = PreviewServiceFactory.createLocationService()
    let weatherService = PreviewServiceFactory.createWeatherService()
    let viewModel = WeatherView.ViewModel(locationService: locationService, weatherService: weatherService)
    
    WeatherView(viewModel: viewModel)
}
