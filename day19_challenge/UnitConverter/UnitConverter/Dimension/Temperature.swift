//
//  Temperature.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Temperature: DimensionProtocol {
    static var unitOfMeasurement = unit.temperature    
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.temperature
    static let units: [Unit] = [Unit(name: "Celcius", method: UnitTemperature.celsius),
                                Unit(name: "Fahrenheit", method: UnitTemperature.fahrenheit),
                                Unit(name: base.temperature, method: UnitTemperature.kelvin),
    ]
}
