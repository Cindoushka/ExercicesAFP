//
//  Models.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 04/12/2023.
//

import Foundation
import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var name : WeatherNames
    var icon : String
    var details: String
    var color: Color
}

enum WeatherNames: String {
    case sun = "Sun"
    case clouds = "Clouds"
    case storm = "Storm"
    case moon = "Moon"
    case snow = "Snow"
    case tornado = "Tornado"
}

