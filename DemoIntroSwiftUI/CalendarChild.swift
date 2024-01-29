//
//  CalendarChild.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 05/12/2023.
//

import SwiftUI

struct CalendarChild: View {
    
    var day: Int
    
    var body: some View {
        
        VStack {
            Text("\(day) Décembre")
                .font(.system(size: 50))
            
            Text("take your pills duuuude")
        }
    }
}

#Preview {
    CalendarChild(day: 5)
}
