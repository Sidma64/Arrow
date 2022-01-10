//
//  ContentView.swift
//  Arrow
//
//  Created by Uzay Toprak on 10.01.2022.
//

import SwiftUI

struct Arrow: Shape {
    var arrowTipSize = 0.2
    var arrowThickness = 0.3
    
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: arrowTipSize * rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: arrowTipSize * rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))




        return path
    }
}

struct ContentView: View {
    @State private var arrowThickness = 1.0

    var body: some View {
        Arrow()
            .fill(.red)
            .frame(width: 50, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

