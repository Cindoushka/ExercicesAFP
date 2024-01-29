//
//  WeatherList.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 04/12/2023.
//

import SwiftUI

struct WeatherList: View {
    var body: some View {
        NavigationView {
            List(weathers) { weather in
                    NavigationLink {
                        WeatherDetails(weather: weather)
                    } label: {
                        WeatherRow(weather: weather)
                }
            }
            .navigationBarTitle("Weathers")
        }
    }
}

#Preview {
    WeatherList()
}
