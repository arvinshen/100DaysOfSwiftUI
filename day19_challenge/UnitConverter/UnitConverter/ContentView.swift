//
//  ContentView.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import SwiftUI


struct ContentView: View {
    @State private var dimensionIndex = 7
    @State private var inputUnitIndex = Array(repeating: 0, count: Dimensions.dimensions.count)
    @State private var outputUnitIndex = Array(repeating: 0, count: Dimensions.dimensions.count)
    @State private var inputValue = 0.0
    @FocusState private var inputIsFocused: Bool
    
    var dimensions: [DimensionProtocol.Type] {
        return Dimensions.dimensions
    }
    
    var units: [Unit] {
        return dimensions[dimensionIndex].units
    }

    var inputUnits: Unit {
        return units[inputUnitIndex[dimensionIndex]]
    }

    var outputUnits: Unit {
        return units[outputUnitIndex[dimensionIndex]]
    }

    var result: Double {
        let input = Measurement(value: inputValue, unit: inputUnits.method)
        return input.converted(to: outputUnits.method).value
    }

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Convert", selection: $dimensionIndex) {
                        ForEach(0..<dimensions.count, id: \.self) {
                            Text(dimensions[$0].unitOfMeasurement)
                        }
                    }
                }
                
                Section {
                    Picker("From", selection: $inputUnitIndex[dimensionIndex]) {
                        ForEach(0..<units.count, id: \.self) {
                            Text(units[$0].name)
                        }
                    }
                    .id(dimensionIndex)
                    TextField("Value", value: $inputValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                }
                
                Section {
                    Picker("To", selection: $outputUnitIndex[dimensionIndex]) {
                        ForEach(0..<units.count, id: \.self) {
                            Text(units[$0].name)
                        }
                    }
                    .id(dimensionIndex)
                    Text(result, format: .number)
                }
            }
            .navigationTitle("Unit Converter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        inputIsFocused = false
                    }
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
