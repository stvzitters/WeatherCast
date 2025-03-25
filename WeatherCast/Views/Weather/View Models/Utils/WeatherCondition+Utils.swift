//
//  WeatherCondition+Utils.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/25.
//

import WCDomain
import SwiftUI

extension WeatherCondition {
    var text: LocalizedStringKey {
        switch self {
        case .clear:
            return "Sunny"
        case .clouds:
            return "Cloudy"
        case .rain:
            return "Rainy"
        default:
            return "-"
        }
    }
    
    var icon: Image {
        switch self {
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
    
    var backgroundImage: ImageResource? {
        switch self {
        case .rain:
            return .backgroundRain
        case .clouds:
            return .backgroundClouds
        case .clear:
            return .backgroundClear
        default:
            return nil
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .rain:
            return .wcRain
        case .clouds:
            return .wcClouds
        case .clear:
            return .wcClear
        default:
            return .wcUnsupported
        }
    }
}
