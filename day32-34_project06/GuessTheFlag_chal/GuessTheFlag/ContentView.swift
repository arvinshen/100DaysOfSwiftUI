//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Arvin Shen on 4/5/22.
//

import SwiftUI

struct FlagImage: View {
    var country: String
    
    var body: some View {
        Image(country)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var endGame = false
    @State private var numQuestions = 0
    @State private var rotation = 0.0
    @State private var opacityValue = 1.0
    @State private var scaleValue = 1.0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing: 30) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            withAnimation {
                                flagTapped(number)
                            }
                        } label: {
                            FlagImage(country: countries[number])
                        }
                        .rotation3DEffect(.degrees(number == correctAnswer ? rotation : 0), axis: (x: 0, y: 1, z: 0))
                        .opacity(number == correctAnswer ? 1.0 : opacityValue)
                        .scaleEffect(number == correctAnswer ? 1.0 : scaleValue)
                        .animation(.default, value: 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(score)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $endGame) {
            Button("New Game", action: reset)
        } message: {
            Text("Final Score: \(score)")
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        numQuestions += 1
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            rotation += 360
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])"
            scaleValue = 0.75
        }
        
        opacityValue -= 0.75

        if numQuestions == 8 {
            endGame = true
            showingScore = false
        } else {
            showingScore = true
        }
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        rotation = 0
        opacityValue = 1
        scaleValue = 1
    }
    
    func reset() {
        score = 0
        numQuestions = 0
        askQuestion()
        rotation = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
