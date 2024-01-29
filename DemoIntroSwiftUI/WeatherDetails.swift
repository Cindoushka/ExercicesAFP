//
//  WeatherDetails.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 04/12/2023.
//

import SwiftUI

struct WeatherDetails: View {
    
    var weather : Weather
    var body: some View {
        VStack {
            Image(systemName: weather.icon)
                .font(.system(size: 200))
            
            Text(weather.name.rawValue)
                .font(.system(size: 100))

            Text(weather.details)
                .font(.system(size: 30))
                .foregroundColor(.black)
                .padding(.horizontal, 10)
                .multilineTextAlignment(.center)
            
        }
        .padding(.bottom, 20)
        .foregroundColor(weather.color)
    }
}

#Preview {
    WeatherDetails(weather: weathers[0])
}
