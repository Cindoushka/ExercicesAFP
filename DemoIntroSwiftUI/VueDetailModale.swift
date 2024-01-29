//
//  VueDetailModale.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 05/12/2023.
//

import SwiftUI

struct VueDetailModale: View {
    
    @State var isActiveModale : Bool = false
    
    var body: some View {

        Button {
            isActiveModale.toggle()
        } label: {
            Text("Show me the weather")
        }
        .sheet(isPresented: $isActiveModale, content: {
            Heartbeats()
        })
    }
}

#Preview {
    VueDetailModale()
}
