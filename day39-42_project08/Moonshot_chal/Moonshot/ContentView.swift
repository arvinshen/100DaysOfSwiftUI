//
//  ContentView.swift
//  Moonshot
//
//  Created by Arvin Shen on 5/30/22.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showingGrid = true
    
    var body: some View {
        Group {
            if showingGrid {
                GridLayout(astronauts: astronauts, missions: missions)
            } else {
                ListLayout(astronauts: astronauts, missions: missions)
            }
        }
        .navigationTitle("My Group")
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Spacer()
                Menu(content: {
                    Button("Grid") {
                        showingGrid = true
                    }
                    Button("List") {
                        showingGrid = false
                    }
                    Text("Layout Preference:")
                }) {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
