//
//  Length.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Length: DimensionProtocol {
    static var unitOfMeasurement = unit.length    
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.length
    static let units: [Unit] = [Unit(name: "Kilometers", method: UnitLength.kilometers),
                                Unit(name: base.length, method: UnitLength.meters),
                                Unit(name: "Centimeters", method: UnitLength.centimeters),
                                Unit(name: "Millimeters", method: UnitLength.millimeters),
                                Unit(name: "Micrometers", method: UnitLength.micrometers),
                                Unit(name: "Nanometers", method: UnitLength.nanometers),
                                Unit(name: "Miles", method: UnitLength.miles),
                                Unit(name: "Yards", method: UnitLength.yards),
                                Unit(name: "Feet", method: UnitLength.feet),
                                Unit(name: "Inches", method: UnitLength.inches),
                                Unit(name: "Nautical Miles", method: UnitLength.nauticalMiles),
    ]
}
