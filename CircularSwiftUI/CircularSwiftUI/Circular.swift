//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Mehmet Tuna Arıkaya on 9.09.2024.
//

import SwiftUI

struct Circular: View {
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    //asa
    
    var body: some View {
        GeometryReader{ geomery in
            ZStack {
                CircularShape(percent: 100, StartAngle: -90)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                  
                
                CircularShape(percent: percentage, StartAngle: -90)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregroundColor)
            }.animation(.interpolatingSpring(duration: 1.0),value: percentage)
            .padding(lineWidth/1.5)
        }
        
    }
}

#Preview {
    Circular(lineWidth: 10, backgroundColor: .red, foregroundColor: .blue, percentage: 30)
}
