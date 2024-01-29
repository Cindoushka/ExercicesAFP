//
//  ScreenColorPicker.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct ScreenColorPicker: View {
    
    @State var bgColor: Color = .white
    
    var body: some View {
        ZStack {
            Color(bgColor)
                .ignoresSafeArea()
            
            HStack {
                
                Button {
                    bgColor = .red
                } label: {
                    HStack {
                        Image(systemName: "eyedropper.full")
                        Text("Red")
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(20)
                }
                
                Button {
                    bgColor = .green
                } label: {
                    HStack {
                        Image(systemName: "eyedropper.full")
                        Text("Green")
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(.green)
                    .cornerRadius(20)
                }
                
                Button {
                    bgColor = .blue
                } label: {
                    HStack {
                        Image(systemName: "eyedropper.full")
                        Text("Blue")
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    ScreenColorPicker()
}
