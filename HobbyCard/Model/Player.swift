//
//  PlayerStructure.swift
//  HobbyCard
//
//  Created by Nicholas Hwang on 17/12/2024.
//

import Foundation

struct Player: Identifiable {
    
    let id = UUID()
    let name: String
    let playerImage: String
    let fcLogo: String
    let position: String
    let mainRating: String
    let pace: String
    let shooting: String
    let passing: String
    let dribbling: String
    let defense: String
    let physical: String
}

let playerList = [
    Player(name: "Jackson", playerImage: "NicolasJackson", fcLogo: "Chelsea", position: "ST", mainRating: "79", pace: "83", shooting: "78", passing: "65", dribbling: "80", defense: "40", physical: "73"),
    Player(name: "Palmer", playerImage: "ColePalmer", fcLogo: "Chelsea", position: "RM", mainRating: "85", pace: "75", shooting: "82", passing: "83", dribbling: "86", defense: "50", physical: "66"),
    Player(name: "Salah", playerImage: "MohammedSalah", fcLogo: "LFC", position: "RW", mainRating: "89", pace: "89", shooting: "87", passing: "82", dribbling: "88", defense: "45", physical: "75")
]
