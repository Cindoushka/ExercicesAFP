//
//  TemperatureConverter.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct TemperatureConverter: View {
    
    @State var tempCelsius: Double = 200.0
    
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                HStack(spacing: 0){
                    VStack{
                        Text("Kelvin")
                        Text(String(format: "%.2f", (tempCelsius + 273.15)))
                    }.frame(minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("Farenheit")
                        Text(String(format: "%.2f", ((tempCelsius * 9/5) + 32)))
                    }.frame(minWidth: 0,
                            maxWidth: .infinity,
                            minHeight: 0,
                            maxHeight: .infinity)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("Celcius")
                        Text(String(format: "%.2f", tempCelsius))
                    }
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .edgesIgnoringSafeArea(.all)
                }
                
            }
            VStack{
                HStack{
                    Slider(value: $tempCelsius, in: 0...400)
                        .tint(.pink)
                }
                Spacer().frame(height: 30)
            }
            
        }
    }
}
#Preview {
    TemperatureConverter()
}
