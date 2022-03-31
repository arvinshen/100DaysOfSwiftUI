import SwiftUI

// day 16 project 1 playground

// Creating a form

struct ContentView: View {
    var body: some View {
        Form {
            Section {
                Text("Hello, world!")
            }
            
            Section {
                Text("Hello, world!")
                Text("Hello, world!")
            }
        }
    }
}

// Adding a navigation bar

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// Modifying program state

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

// Binding state to user interface controls

struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

// Creating views in a loop

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"

    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}
