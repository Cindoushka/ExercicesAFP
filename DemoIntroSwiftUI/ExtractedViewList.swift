//
//  ExtractedViewList.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct ExtractedViewList: View {
    
    var image: String
    var nom: String
    var color: Color
    
    var body: some View {

        HStack {
            Image(systemName: image)
                .foregroundColor(color)
                .font(.system(size: 32))
                .padding(8)
            
            Text(nom)
                .font(.title)
        }
    }
}

#Preview {
    ExtractedViewList(image: "heart.fill", nom: "Cindie", color: .pink)
}
