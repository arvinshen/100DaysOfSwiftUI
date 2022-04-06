//
//  Frequency.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Frequency: DimensionProtocol {
    static var unitOfMeasurement = unit.frequency
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.frequency
    static let units: [Unit] = [Unit(name: base.frequency, method: UnitFrequency.hertz),
                                Unit(name: "Kilohertz", method: UnitFrequency.kilohertz),
                                Unit(name: "Megahertz", method: UnitFrequency.megahertz),
                                Unit(name: "Gigahertz", method: UnitFrequency.gigahertz),
    ]
}
