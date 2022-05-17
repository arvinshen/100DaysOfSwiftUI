import SwiftUI

// day 29 project 5 playground

// Introducing List, your best friend

struct ContentView: View {
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }
            
            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }
            
            Section("Section 3") {
                Text("Static row 3")
                Text("Static row 4")
            }
        }
        .listStyle(.grouped)
    }
}

struct ContentView: View {
    var body: some View {
        List(0..<5) {
            Text("Dynamic row \($0)")
        }
        .listStyle(.grouped)
    }
}

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List(people, id: \.self) {
            Text($0)
        }
        .listStyle(.grouped)
    }
}

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        List {
            Text("Static Row")

            ForEach(people, id: \.self) {
                Text($0)
            }

            Text("Static Row")
        }
        .listStyle(.grouped)
    }
}

// Loading resources from your app bundle

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func loadFile() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                fileContents
            }
        }
    }
}

// Working with strings

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func test() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func test() {
        let input = """
                    a
                    b
                    c
                    """
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    func test() {
        let word = "swift"
        let checker = UITextChecker()
        
        // need to ask Swift to create an Obj-C string range using entire length of all characters so Obj-C can understand how Swift's strings are stored; bridges format to connect the two.
        let range = NSRange(location: 0, length: word.utf16.count)
        
        // Asks text checker to report where it found any misspellings in the word, passing in the range to check, a position to start within the range, whether it should wrap around once it reaches the end, and what language to use for the dictionary
        // Sends back another Obj-C string range, telling us where the misspelling occurred.
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        // Obj-C doesn't have optionals, but instead uses NSNotFound
        let allGood = misspelledRange.location == NSNotFound
    }
}
