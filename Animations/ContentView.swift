//
//  ContentView.swift
//  Animations
//
//  Created by Buhecha, Neeta (Trainee Engineer) on 14/05/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        
        Button("Tap Me") {
            withAnimation(.spring(duration: 0.5, bounce: 0.5)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1, y: 0, z:0)
        )
        
    }
}

#Preview {
    ContentView()
}
