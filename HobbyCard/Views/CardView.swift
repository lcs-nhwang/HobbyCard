//
//  ContentView.swift
//  HobbyCard
//
//  Created by Nicholas Hwang on 17/12/2024.
//

import SwiftUI

//COLORS
let gradientColors1 = Gradient(colors: [Color.white, Color.goldYellow, Color.yellow])
let gradientColors2 = Gradient(colors: [Color.yellow, Color.goldYellow, Color.darkGold])
let linearGradient1 = LinearGradient(gradient: gradientColors1, startPoint: .top, endPoint: .bottom)
let linearGradient2 = LinearGradient(gradient: gradientColors2, startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            ZStack{
                Rectangle()
                Heptagon()
                    .fill(linearGradient1)
                Pentagon()
                    .fill(linearGradient2)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
