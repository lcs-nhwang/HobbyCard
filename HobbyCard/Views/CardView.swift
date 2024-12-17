//
//  ContentView.swift
//  HobbyCard
//
//  Created by Nicholas Hwang on 17/12/2024.
//

import SwiftUI

//COLORS
let gradientColors = Gradient(colors: [Color.white, Color.goldYellow, Color.darkGold])
let linearGradient = LinearGradient(gradient: gradientColors, startPoint: .top, endPoint: .bottom)




struct CardView: View {
    
    let providedPlayer: Player
    var body: some View {
        
        VStack(alignment: .center) {
            ZStack{
                Color.black
                ZStack {
                    Heptagon()
                        .fill(linearGradient)
                    VStack {
                        HStack {
                            Spacer()
                                .frame(width: 60, height: 10)
                            VStack {
                                ZStack {
                                    Circle()
                                        .fill()
                                }
                                Text(providedPlayer.mainRating)
                                    .font(.custom("PingFangHK -SemiBold", size: 89.0, relativeTo: .body))
                                Image(providedPlayer.fcLogo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text(providedPlayer.position)
                                    .font(.custom("Farah", size: 35.0, relativeTo: .body))
                            }
                            Image(providedPlayer.playerImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                        }
                        Text(providedPlayer.name)
                            .font(.custom("Farah", size: 60.0, relativeTo: .body))
                        Text("Stats")
                            .font(.largeTitle)
                        HStack {
                            VStack {
                                Text("\(providedPlayer.pace) PAC")
                                Text("\(providedPlayer.shooting) SHO")
                                Text("\(providedPlayer.passing) PAS")
                            }
                            Spacer()
                                .frame(width: 100, height: 30)
                            VStack {
                                Text("\(providedPlayer.dribbling) DRI")
                                Text("\(providedPlayer.defense) DEF")
                                Text("\(providedPlayer.physical) PHY")
                            }
                        }
                    }
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CardView(providedPlayer: jackson)
}
