//
//  WeatherSummaryView.swift
//  WeatherCast
//
//  Created by Shaun van Zitters on 2025/03/23.
//

import SwiftUI

struct WeatherSummaryView: View {
    
    let currentTemp: String
    let minTemp: String
    let maxTemp: String
    
    var body: some View {
        HStack (spacing: 0) {
            VStack {
                Text(minTemp)
                Text("min")
            }
            .padding(.leading, 8)
            .containerRelativeFrame(.horizontal, alignment: .leading) { length, axis in
                length / 3.0
            }
            
            VStack {
                Text(currentTemp)
                Text("Current")
            }
            .containerRelativeFrame(.horizontal, alignment: .center) { length, axis in
                length / 3.0
            }
            
            VStack {
                Text(maxTemp)
                Text("max")
            }
            .padding(.trailing, 8)
            .containerRelativeFrame(.horizontal, alignment: .trailing) { length, axis in
                length / 3.0
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    VStack {
        WeatherSummaryView(currentTemp: "25", minTemp: "19", maxTemp: "27")
    }
    .background(.wcClear)
}
