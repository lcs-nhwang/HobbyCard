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
    Player(name: <#T##String#>, fcLogo: <#T##String#>, position: <#T##String#>, mainRating: <#String#>, pace: <#T##String#>, shooting: <#T##String#>, passing: <#T##String#>, dribbling: <#T##String#>, defense: <#T##String#>, physical: <#T##String#>)
]
