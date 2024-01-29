//
//  Heartbeats.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 30/11/2023.
//

import SwiftUI

struct Heartbeats: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .font(.system(size:220))
                .foregroundStyle(.pink)
                .symbolEffect(.bounce, value: count)
            
            
            Spacer()
            
            Button {
                count += 1
            } label: {
                Text("Fais battre mon coeur!..")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
                    .background(Color.pink.opacity(0.8))
                    .cornerRadius(20)
            }
            Text("\(count) battements..")
                .foregroundStyle(.gray)
                .font(.title2)
            
        }
        .padding()
    }
}
#Preview {
    Heartbeats()
}
