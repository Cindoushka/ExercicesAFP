//
//  TemperatureSlider.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct TemperatureSlider: View {
    
    @State var temperature: Double = 25
    
    var body: some View {
        
        ZStack {
            if temperature < 15 {
                Color(Color.cyan.opacity(0.5))
            } else if temperature < 35 {
                Color(.orange)
            } else {
                Color(.red)
            }
            VStack {
                Text("\(Int(temperature))° c")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                if temperature < 15 {
                    Text("It's way too cold..")
                } else if temperature < 35 {
                    Text("Temp' is just right cap'")
                } else {
                    Text("Woah... I'm melting!")
                }

                
                Slider(value: $temperature, in: -10...50)
                    .padding(.horizontal,40)
            }
            .font(.subheadline)

        }
        .ignoresSafeArea()

    }
}

#Preview {
    TemperatureSlider()
}
