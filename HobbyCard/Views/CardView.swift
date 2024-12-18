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
let gradientColorsForRating = Gradient(colors: [Color.white, Color.blue, Color.cyan])
let ratingLinearGradient = LinearGradient(gradient: gradientColorsForRating, startPoint: .top, endPoint: .bottom)



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
                                .frame(width: 60)
                            VStack {
                                ZStack {
                                    Circle()
                                        
                                    Text(providedPlayer.mainRating)
                                        .font(.custom("PingFangHK -SemiBold", size: 89.0, relativeTo: .body))
                                        .foregroundStyle(.goldYellow)
                                }
                    
                                Image(providedPlayer.fcLogo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120)
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
                        Rectangle()
                            .fill(.brown)
                            .frame(height:1)
                        Text("Stats")
                            .font(.largeTitle)
                        HStack {
                            VStack {
                                Text("\(providedPlayer.pace) PAC")
                                Text("\(providedPlayer.shooting) SHO")
                                Text("\(providedPlayer.passing) PAS")
                            }
                            Spacer()
                                .frame(width: 50)
                            Rectangle()
                                .fill(.brown)
                                .frame(width: 1, height: 100)
                            Spacer()
                                .frame(width: 50)
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
    CardView(providedPlayer: palmer)
}
