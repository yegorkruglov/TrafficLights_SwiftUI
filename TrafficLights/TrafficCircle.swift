//
//  TrafficCircle.swift
//  TrafficLights
//
//  Created by Egor Kruglov on 18.07.2023.
//

import SwiftUI

struct TrafficCircle: View, Equatable {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
    }
}

struct TrafficCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficCircle(color: .green, opacity: 0.3)
    }
}
