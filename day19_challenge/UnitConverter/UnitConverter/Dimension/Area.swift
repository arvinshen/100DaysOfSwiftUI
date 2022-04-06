//
//  Area.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Area: DimensionProtocol {
    static var unitOfMeasurement = unit.area
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.area
    static let units: [Unit] = [Unit(name: "Square Kilometers", method: UnitArea.squareKilometers),
                                Unit(name: base.area, method: UnitArea.squareMeters),
                                Unit(name: "Square Miles", method: UnitArea.squareMiles),
                                Unit(name: "Square Yards", method: UnitArea.squareYards),
                                Unit(name: "Square Feet", method: UnitArea.squareFeet),
                                Unit(name: "Square Inches", method: UnitArea.squareInches),
                                Unit(name: "Hectares", method: UnitArea.hectares),
                                Unit(name: "Acres", method: UnitArea.acres),
    ]
}
