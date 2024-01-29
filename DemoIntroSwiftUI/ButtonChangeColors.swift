//
//  ButtonChangeColors.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct ButtonChangeColors: View {
    
    @State var zbgcolor: Color = .white
    
    var body: some View {
        
        ZStack {
            
            Color(zbgcolor.opacity(0.8))
                .ignoresSafeArea()
            
            HStack {
                ButtonExtracted(image: "tortoise.fill", bgcolor: true, zbgcolor: $zbgcolor)
                ButtonExtracted(image: "speaker.zzz.fill", bgcolor: false, zbgcolor: $zbgcolor)
                ButtonExtracted(image: "hare.fill", bgcolor: true, zbgcolor: $zbgcolor)
                ButtonExtracted(image: "speaker.wave.3.fill", bgcolor: false, zbgcolor: $zbgcolor)
            }
        }
    }
}

#Preview {
    ButtonChangeColors()
}
