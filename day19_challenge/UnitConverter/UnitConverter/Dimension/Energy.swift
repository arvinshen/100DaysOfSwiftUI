//
//  Energy.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Energy: DimensionProtocol {
    static var unitOfMeasurement = unit.energy
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.energy
    static let units: [Unit] = [Unit(name: "Kilojoules", method: UnitEnergy.kilojoules),
                                Unit(name: base.energy, method: UnitEnergy.joules),
                                Unit(name: "Kilocalories", method: UnitEnergy.kilocalories),
                                Unit(name: "Calories", method: UnitEnergy.calories),
                                Unit(name: "Kilowatt Hours", method: UnitEnergy.kilowattHours),
    ]
}
