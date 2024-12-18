//
//  Pentagon.swift
//  HobbyCard
//
//  Created by Nicholas Hwang on 17/12/2024.
//

import SwiftUI

struct Octagon: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY*0.15))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY*0.85))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY*0.85))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        path.closeSubpath()
        
        return path
    }
}

#Preview {
    Octagon()
}
