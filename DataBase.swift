//
//  DataBase.swift
//  DemoIntroSwiftUI
//
//  Created by apprenant72 on 04/12/2023.
//

import Foundation


var weathers : [Weather] = [Weather(name: .sun, icon: "sun.max.fill", details: "It's sunny outside,  go out, have fun, enjoy your time", color: .yellow),
                            Weather(name: .clouds, icon: "cloud.fill", details: "There are some clouds in the sky, gods are hiding for a while", color: .blue),
                            Weather(name: .storm, icon: "cloud.bolt.fill", details: "Take care, u may meet some storms, stay away from trees and umbrellas", color: .gray),
                            Weather(name: .moon, icon: "moon.fill", details: "It's the night, a beautiful moon is out there, but you may meet a werewolf or two", color: .purple),
                            Weather(name: .snow, icon: "snowflake", details: "There's a Chrismas smell, snow is coming, winter is coming and Jon Snow is alive", color: .cyan),
                            Weather(name: .tornado, icon: "tornado", details: "STAY HOME, or maybe not, if you are a tornado chaser, or if you are not happy in life", color: .red)

]

let days : [String] = ["Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche"]

let months : [String] = ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"]
