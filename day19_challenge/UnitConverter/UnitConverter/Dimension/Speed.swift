//
//  Speed.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Speed: DimensionProtocol {
    static var unitOfMeasurement = unit.speed    
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.speed
    static let units: [Unit] = [Unit(name: base.speed, method: UnitSpeed.metersPerSecond),
                                Unit(name: "Kilometers Per Hour", method: UnitSpeed.kilometersPerHour),
                                Unit(name: "Miles Per Hour", method: UnitSpeed.milesPerHour),
                                Unit(name: "Knots", method: UnitSpeed.knots),
    ]
}
