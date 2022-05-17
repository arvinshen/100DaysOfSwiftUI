import SwiftUI

// day 26 project 4 playground

// Entering numbers with Stepper

struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
    }
}

// Selecting dates and times with DatePicker

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp,in: Date.now..., displayedComponents: .date)
            .labelsHidden()
    }
    
    func exampleDate() {
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)
                
        // create a range from those two
        let range = Date.now...tomorrow
    }
}

// Working with dates

struct ContentView: View {
    var body: some View {
        VStack {
            Text(Date.now, format: .dateTime.day().month().year())
                .padding()
            Text(Date.now, format: .dateTime.hour().minute())
                .padding()
            Text(Date.now.formatted(date: .long, time: .shortened))
            Text(Date.now.formatted(date: .complete, time: .omitted))
        }
    }
    
    func trivialExample() {
        var components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}
