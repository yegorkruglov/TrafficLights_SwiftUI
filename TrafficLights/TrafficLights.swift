//
//  ContentView.swift
//  TrafficLights
//
//  Created by Egor Kruglov on 18.07.2023.
//

import SwiftUI

struct TrafficLights: View {
    @State var activeCircle: TrafficCircle?
    
    @State var green = TrafficCircle(color: .green, opacity: 0.6)
    @State var yellow = TrafficCircle(color: .yellow, opacity: 0.6)
    @State var red = TrafficCircle(color: .red, opacity: 0.6)
    
    var body: some View {
        VStack() {
            green
            yellow
            red
            
            Spacer()
           
            Button(action: switchCircles ) {
                Text(activeCircle == nil ? "Start" : "Next")
                    .font(.title)
            }
        }
        .padding()
        
    }
    
    func switchCircles() {
        switch activeCircle {
        case green:
            green.opacity = 0.6
            yellow.opacity = 1
            activeCircle = yellow
        case yellow:
            yellow.opacity = 0.6
            red.opacity = 1
            activeCircle = red
        case red:
            red.opacity = 0.6
            green.opacity = 1
            activeCircle = green
        default:
            green.opacity = 1
            activeCircle = green
        }
    }
}

struct TrafficLights_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLights()
    }
}
