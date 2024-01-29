//
//  CalendarCellule.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 05/12/2023.
//

import SwiftUI

struct CalendarCellule: View {
    
    var jourActuel = 5
    
    @State var isSelectedDay = 0
    
    @State var isActive = false
    
    var body: some View {

        VStack {
            Text("Décembre")
                .font(.system(size: 20))
                .fontWeight(.semibold)
//                .tracking(24)

            Divider().frame(width: 300)
                .background(.pink)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1...31, id: \.self) { day in
                        VStack(spacing: -4) {
                            Button {
                                isActive.toggle()
                                isSelectedDay = day
                            } label: {
                                Text(String(day))
                                    .foregroundStyle(.white)
                                    .padding()
                                    .background(
                                        Circle()
                                            .frame(width: 40)
                                            .foregroundStyle(day == jourActuel ? .cyan : .green)
                                    )
                                    .padding(4)
                            }
                                switch day {
                                case 5, 6, 12, 13, 19, 20, 26, 27:
                                    Text("M")
                                case 4, 11, 18, 25:
                                    Text("L")
                                case 3, 10, 17, 24, 31:
                                    Text("D")
                                case 2, 9, 16, 23, 30:
                                    Text("S")
                                case 1, 8, 15, 22, 29:
                                    Text("V")
                                default:
                                    Text("J")
                                }
                        }
                    }
                }
                .padding(.leading, 10)
            }
            
            Spacer()
            
            if isActive {
                CalendarChild(day: isSelectedDay)
            } else {
                Text("")
            }
            
            Spacer()
        }
        .padding(.top, 20)
    }
}

#Preview {
    CalendarCellule()
}
