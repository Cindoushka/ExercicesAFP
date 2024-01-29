//
//  ButtonsForCards.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 01/12/2023.
//

import SwiftUI

struct ButtonsForCards: View {
    
    var image : String
    var color: Color
    var nameCard: String
    
    @Binding var imageSelected : String
    
    var body: some View {

        Button {
            withAnimation {
                imageSelected = image
            }
        } label: {
            Image(systemName: image)
            
            Text(nameCard)
        }
        .foregroundColor(.white)
        .frame(width: 120, height: 60)
        .background(color)
        .cornerRadius(24)
    }
}

#Preview {
    ButtonsForCards(image: "heart.fill", color: .pink, nameCard: "Coeur", imageSelected: .constant("heart.fill"))
}
