//
//  FuelEfficiency.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct FuelEfficiency: DimensionProtocol {
    static var unitOfMeasurement = unit.fuelEfficiency
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.fuelEfficiency
    static let units: [Unit] = [Unit(name: base.fuelEfficiency, method: UnitFuelEfficiency.litersPer100Kilometers),
                                Unit(name: "Miles Per Gallon", method: UnitFuelEfficiency.milesPerGallon),
                                Unit(name: "Miles Per Imperial Gallon", method: UnitFuelEfficiency.milesPerImperialGallon),
    ]
}
