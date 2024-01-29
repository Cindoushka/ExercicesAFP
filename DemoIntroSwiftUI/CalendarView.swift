//
//  CalendarView.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 05/12/2023.
//

import SwiftUI

struct CalendarView: View {
    
    
    var body: some View {
        
        VStack {
            HStack {
                TabView {
                    
                    HStack {
                        ForEach(1...7, id: \.self) { day in
                            VStack {
                                
                                Text(" \(String(day)) ")
                                    .foregroundStyle(.white)
                                    .padding(12)
                                    .background(
                                        Circle()
                                            .foregroundStyle(.purple)
                                    )
                                .padding(1)
                            }
                        }
                    }
                    HStack {
                        ForEach(8...14, id: \.self) { week in
                                Text(String(week))
                                    .foregroundStyle(.white)
                                    .padding(12)
                                    .background(
                                        Circle()
                                            .foregroundStyle(.purple)
                                    )
                                    .padding(1)
                        }
                    }
                    HStack {
                        ForEach(15...21, id: \.self) { week2 in
                                Text(String(week2))
                                    .foregroundStyle(.white)
                                    .padding(12)
                                    .background(
                                        Circle()
                                            .foregroundStyle(.purple)
                                    )
                                    .padding(1)
                        }
                    }
                    HStack {
                        ForEach(22...29, id: \.self) { weeek in
                                Text(String(weeek))
                                    .foregroundStyle(.white)
                                    .padding(8)
                                    .background(
                                        Circle()
                                            .foregroundStyle(.purple)
                                    )
                                    .padding(1)
                        }
                    }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .indexViewStyle(/*@START_MENU_TOKEN@*/PageIndexViewStyle()/*@END_MENU_TOKEN@*/)
                    .frame(height: 100)
                .padding(.horizontal, 6)
                
            }
            Spacer()
        }
    }
}

#Preview {
    CalendarView()
}

