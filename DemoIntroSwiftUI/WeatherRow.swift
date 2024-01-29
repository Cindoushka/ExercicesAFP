//
//  WeatherRow.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 04/12/2023.
//

import SwiftUI

struct WeatherRow: View {
    
    var weather: Weather
    
    var body: some View {
        HStack {
            Image(systemName: weather.icon)
            Text(weather.name.rawValue)
            
        }
        .padding(8)
        .foregroundColor(weather.color)
    }
}

#Preview {
    WeatherRow(weather: weathers[0])
}
