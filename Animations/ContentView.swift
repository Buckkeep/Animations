//
//  ContentView.swift
//  Animations
//
//  Created by Buhecha, Neeta (Trainee Engineer) on 14/05/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            
        }
        
    }
}

#Preview {
    ContentView()
}
