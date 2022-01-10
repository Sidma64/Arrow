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
        path.addLine(to: CGPoint(x: rect.midX * (1 - arrowThickness), y: arrowTipSize * rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX * (1 - arrowThickness), y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX * (1 + arrowThickness), y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX * (1 + arrowThickness), y: arrowTipSize * rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: arrowTipSize * rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))





        return path
    }
}

struct ContentView: View {
    @State private var arrowTipSize = 0.2
    @State private var arrowThickness = 0.3
    @State private var arrowWidth = 50.0
    
    var body: some View {
        VStack {
            Arrow(arrowTipSize: arrowTipSize, arrowThickness: arrowThickness)
                .fill(.red)
                .frame(width: arrowWidth, height: 300)
            Text("Arrow Tip Size")
            Slider(value: $arrowTipSize, in: 0...1)
            
            Text("Arrow Thickness")
            Slider(value: $arrowThickness, in: 0...1)
            
            Text("Arrow Width")
            Slider(value: $arrowWidth, in: 1...300)


        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

