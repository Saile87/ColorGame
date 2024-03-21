//
//  ContentView.swift
//  ColorGame
//
//  Created by Elias Breitenbach on 21.03.24.
//

import SwiftUI

struct ContentView: View {
    
    let colors: [Color] = [.red, .blue, .yellow, .green, .black, .gray]
    @State private var farben = ["Red", "Blue", "Yello", "Green", "Black", "Gray"].shuffled()
    @State private var correctAnswer = Int.random(in: 0..<5)
    
    var body: some View {
        VStack {
            Text(farben[correctAnswer])
        }
                ForEach(colors, id: \.self) { color in
                    Button(action: {
                        print("ok")
                    }, label: {
                        Circle()
                            .foregroundColor(color)
                    })
                }
            }
        
    func ColorTapped(_ number: Int) {
        if number == correctAnswer {
            
        }
    }
}

#Preview {
    ContentView()
}
