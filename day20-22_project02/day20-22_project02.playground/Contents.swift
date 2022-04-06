import SwiftUI

// day 20 project 2 playground

// Using stacks to arrange views

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("1")
                Text("2")
                Text("3")
            }
            HStack {
                Text("4")
                Text("5")
                Text("6")
            }
            HStack {
                Text("7")
                Text("8")
                Text("9")
            }
        }
    }
}

// Colors and frames

struct ContentView: View {
    var body: some View {
        // 1
        ZStack {
            Text("Your content")
        }
        
        // 2
        ZStack {
            Text("Your content")
        }
        .background(.red)
        
        // 3
        ZStack {
            Text("Your content")
                .background(.red)
        }
        
        // 4
        ZStack {
            Color.red
            Text("Your content")
        }
        
        // 5
        ZStack {
            Color.red
                .frame(width: 200, height: 200)
            Text("Your content")
        }
        
        // 6
        ZStack {
            Color.red
                .frame(minwidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Your content")
        }
        
        // 7
        ZStack {
            Color.primary
        }
        
        // 8
        ZStack {
            Color(red: 1, green: 0.8, blue: 0)
        }
        
        // 9
        ZStack {
            Color.red
            Text("Your content")
        }
        .ignoresSafeArea()
        
        // 10
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

// Gradients

struct ContentView: View {
    var body: some View {
        // 1
        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
        
        // 2
        LinearGradient(gradient: Gradient(stops: [
            Gradient.Stop(color: .white, location: 0.45),
            Gradient.Stop(color: .black, location: 0.55)
        ]), startPoint: .top, endPoint: .bottom)
        
        // 3
        LinearGradient(gradient: Gradient(stops: [
            .init(color: .white, location: 0.45),
            .init(color: .black, location: 0.55)
        ]), startPoint: .top, endPoint: .bottom)
        
        // 4
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
        
        // 5
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

// Buttons and images

struct ContentView: View {
    var body: some View {
        // 1
        Button("Delete selection") {
            print("Now deleting")
        }
    
        // 2
        Button("Delete selection", action: executeDelete)
    
        // 3
        Button("Delete selection", role: .destructive, action: executeDelete)

        // 4
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
        }
        
        // 5
        Button {
            print("Button was tapped!")
        } label: {
            Text("Tap me!")
                .padding()
                .foregroundColor(.white)
                .background(.red)
        }
        
        // 6
        Button {
            print("Edit Button was tapped!")
        } label: {
            Image(systemName: "pencil")
        }
        
        // 7
        Button {
            print("Edit Button was tapped!")
        } label: {
            Label("Edit", systemImage: "pencil")
        }
    }
    
    func executeDelete() {
        print("Now deleting")
    }
}

// Showing alert messages

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("OK") { }
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Please read this")
        }
    }
}
