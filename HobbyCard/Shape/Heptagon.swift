//
//  HeptagonBackground.swift
//  HobbyCard
//
//  Created by Nicholas Hwang on 17/12/2024.
//

import SwiftUI

struct Heptagon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX*0.15, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY*0.15))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY*0.85))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY*0.85))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY*0.15))
        path.addLine(to: CGPoint(x: rect.maxX*0.85, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX*0.15, y: rect.minY))
        path.closeSubpath()
        
        return path
    }
    
   
}

#Preview {
    Heptagon()
}
