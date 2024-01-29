//
//  HeartbeatsSource.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 04/12/2023.
//

import SwiftUI

struct HeartbeatsSource: View {
    @State var activeModale = false
    
    var body: some View {
        NavigationView   {
            
            ZStack {
                
                Color(.pink)
                    .ignoresSafeArea()
                VStack(spacing: 40) {
                    
                    
                    NavigationLink {
                        Heartbeats()
                    } label: {
                        Text("Par ici pour faire battre un coeur...")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding()
                            .frame(width: 250)
                            .background(Color.pink.opacity(0.8))
                            .cornerRadius(20)
                    }
                    
                    
                    Text("Bienvenue")
                        .font(.system(size: 40))
                    

                    
                    Button {
                        activeModale.toggle()
                    } label: {
                        Text("Par là pour jouer aux cartes...")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding()
                            .frame(width: 250)
                            .background(Color.pink.opacity(0.8))
                            .cornerRadius(20)
                            .sheet(isPresented: $activeModale, content: {
                                SelectionCardColor( activeModale: $activeModale)
                            })
                    }
                }
            }
        }
    }
}

#Preview {
    HeartbeatsSource()
}
