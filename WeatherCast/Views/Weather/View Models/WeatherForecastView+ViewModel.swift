//
//  WeatherForecastView+ViewModel.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/24.
//

import Foundation
import SwiftUI
import WCDomain

extension WeatherForecastView {
    @Observable final class ViewModel {
        func getConditionIconImage(forCondition condition: WeatherCondition) -> Image {
            switch condition {
            case .rain:
                return Image(.iconRain)
            case .clouds:
                return Image(.iconClouds)
            case .clear:
                return Image(.iconClear)
            case .unsupported:
                return Image("x.circle.fill")
            }
        }
    }
}
