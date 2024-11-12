//
//  CircularShape.swift
//  CircularSwiftUI
//
//  Created by Mehmet Tuna Arıkaya on 9.09.2024.
//
import Foundation
import SwiftUI

struct CircularShape: Shape {
    var percent : Double
    var StartAngle : Double
    
    typealias animatableData = Double
    var animatableData: Double {
        get {
            return percent
            //7
        }
        set{
            percent = newValue
        }
    }
    
    
    init(percent : Double = 100,StartAngle : Double = -90){
        self.percent = percent
        self.StartAngle = StartAngle
    }
    
    
    
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        let radius = min(width,height) / 2
        let center = CGPoint(x: width/2, y: height/2)
        let endAngle = (self.percent / 100 * 360) + self.StartAngle
        
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: self.StartAngle), endAngle: Angle(degrees: endAngle), clockwise: false)
        }
    }
    
   
    }


