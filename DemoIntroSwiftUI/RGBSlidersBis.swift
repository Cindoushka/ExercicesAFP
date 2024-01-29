//
//  RGBSlidersBis.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 01/12/2023.
//

import SwiftUI

struct RGBSlidersBis: View {
    
    @State var redValue: Double = 255
    @State var greenValue: Double = 255
    @State var blueValue: Double = 255
    
    
    var body: some View {
        
        ZStack {
            
            Color(red: redValue, green: greenValue, blue: blueValue)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                HStack(spacing: 58) {
                    Text("Red = \(Int(redValue))")
                    Text("Green = \(Int(greenValue))")
                    Text("Blue = \(Int(blueValue))")
                    
                }
                
                HStack {
                    Text("0")
                    Slider(value: $redValue, in: 0...255)
                    Text("255")
                    
                    Text("0")
                    Slider(value: $greenValue, in: 0...255)
                    Text("255")
                    
                    Text("0")
                    Slider(value: $blueValue, in: 0...255)
                    Text("255")
                }
            }
        }
    }
}

#Preview {
    RGBSlidersBis()
}
