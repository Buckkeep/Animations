//
//  ContentView.swift
//  Animations
//
//  Created by Buhecha, Neeta (Trainee Engineer) on 14/05/2024.
//

import SwiftUI



struct ContentView: View {
    
    let letters = Array("Hello SwiftUI")
    
    @State private var isShowingRed = false
    
    var body: some View {
        
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }

    }
}

#Preview {
    ContentView()
}
