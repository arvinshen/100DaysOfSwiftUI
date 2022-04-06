//
//  Duration.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Duration: DimensionProtocol {
    static var unitOfMeasurement = unit.time    
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.time
    static let units: [Unit] = [Unit(name: base.time, method: UnitDuration.seconds),
                                Unit(name: "Minutes", method: UnitDuration.minutes),
                                Unit(name: "Hours", method: UnitDuration.hours),
    ]
}
