//
//  CardTabView.swift
//  HobbyCard
//
//  Created by Nicholas Hwang on 17/12/2024.
//

import SwiftUI

struct CardTabView: View {
   
    var body: some View {
        TabView {
            ForEach(playerList) { currentPlayer in
                CardView(providedPlayer: currentPlayer) 
            }
            .ignoresSafeArea()
            .tabViewStyle(.page(indexDisplayMode: .never))
            .persistentSystemOverlays(.hidden)
        }
    }
}

#Preview {
    CardTabView()
}
