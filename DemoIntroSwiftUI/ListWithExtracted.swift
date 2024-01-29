//
//  ListWithExtracted.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct ListWithExtracted: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                ExtractedViewList(image: "d.circle.fill", nom: "Danilo Santana", color: .orange)
                ExtractedViewList(image: "g.circle.fill", nom: "Gilles Deltel", color: .purple)
                ExtractedViewList(image: "m.circle.fill", nom: "Mark Nichols", color: .blue)
            }
            
            Spacer().frame(height: 60)
            
            VStack(alignment: .leading, spacing: 4) {
                ExtractedViewList(image: "leaf.arrow.triangle.circlepath", nom: "Danilo Santana", color: .green)
                ExtractedViewList(image: "burn", nom: "Gilles Deltel", color: .red)
                ExtractedViewList(image: "arrow.3.trianglepath", nom: "Mark Nichols", color: .yellow)
            }
        }
    }
}

#Preview {
    ListWithExtracted()
}
