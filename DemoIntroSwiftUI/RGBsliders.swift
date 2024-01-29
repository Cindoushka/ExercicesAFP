//
//  RGBsliders.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct RGBsliders: View {
    
    @State var rvalue : Double = 0
    @State var gvalue : Double = 0
    @State var bvalue : Double = 0
    
    
    var body: some View {
        
        ZStack {
            
            Color(Color(red: rvalue, green: gvalue, blue: bvalue, opacity: 1))
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Text("0")
                    Slider(value: $rvalue, in: 0...255)
                    Text("255")
                    Text("0")

                    Slider(value: $gvalue, in: 0...255)
                    Text("255")
                    Text("0")

                    Slider(value: $bvalue, in: 0...255) 
                    
                    Text("255")

                    
                }
                .padding(.horizontal)
                
                HStack {
                    Text("Red: \(Int(rvalue))")
                        .padding()
                    
                    Text("Green: \(Int(gvalue))")
                        .padding()

                    Text("Blue: \(Int(bvalue))")
                        .padding()

                }
            }
        }
      
    }
}

#Preview {
    RGBsliders()
}
