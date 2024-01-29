//
//  ButtonExtracted.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct ButtonExtracted: View {
    
    var image : String
    
    @State var bgcolor: Bool = true
    @Binding var zbgcolor : Color
    
    var colorsArray : [Color] = [.white, .gray, .black, .green, .brown, .cyan, .indigo, .pink, .red, .yellow, .orange, .mint, .purple, .teal]
    
    var body: some View {
        
        Button {
            bgcolor.toggle()
            zbgcolor = colorsArray.randomElement() ?? .white
            
        } label: {
            Image(systemName: image)
                .foregroundColor(.white)
                .font(.system(size: 30))
                .frame(width: 80, height: 60)
                .background(bgcolor == true ? .red : .blue)
                .cornerRadius(24)
                .symbolEffect(.variableColor, value: bgcolor)
        }
    }
}

#Preview {
    ButtonExtracted(image: "tortoise.fill", zbgcolor: .constant(.white))
}
