//
//  SelectionCardColor.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct SelectionCardColor: View {
    
    @State var imageSelected : String = ""
    @Binding var activeModale : Bool
    

    @Environment(\.dismiss) var dismiss
    var body: some View {

        VStack {
            
            HStack {
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .padding()
                        .font(.system(size: 24))
                }
            }
            .padding(.bottom, 80)
            
            
            HStack {

                ButtonsForCards(image: "suit.club.fill", color: .black, nameCard: "Clubs", imageSelected: $imageSelected)
                
                Spacer().frame(width:80)
                
                ButtonsForCards(image: "heart.fill", color: .red, nameCard: "Hearts", imageSelected: $imageSelected)
                

            }
            
            Spacer().frame(height:80)

            if imageSelected == "" {
                Text("Select a suit")
                    .foregroundColor(.gray)
                    .font(.largeTitle)
                    .frame(height: 100)

            } else if imageSelected == "heart.fill" || imageSelected == "diamond.fill" {
                    Image(systemName: imageSelected)
                        .font(.system(size: 100))
                        .frame(height: 100)
                        .foregroundColor(.red)
            } else {
                Image(systemName: imageSelected)
                    .font(.system(size: 100))
                    .frame(height: 100)
            }

            Spacer().frame(height:80)

            HStack {
                
                ButtonsForCards(image: "diamond.fill", color: .red, nameCard: "Spades", imageSelected: $imageSelected)
                
                Spacer().frame(width:80)
                
                ButtonsForCards(image: "suit.spade.fill", color: .black, nameCard: "Suits", imageSelected: $imageSelected)
            }
            
            Spacer().frame(height:130)

        }
        .frame(height: 300)
    }
}

#Preview {
    SelectionCardColor(activeModale: .constant(true))
}
