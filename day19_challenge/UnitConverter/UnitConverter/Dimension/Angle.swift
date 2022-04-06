//
//  Angle.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Angle: DimensionProtocol {
    static var unitOfMeasurement = unit.angle
    static var nsDimensionSubclass = Self.getNSDimensionSubclass()
    static var baseUnit = base.angle
    static let units: [Unit] = [Unit(name: base.angle, method: UnitAngle.degrees),
                                Unit(name: "Radians", method: UnitAngle.radians),
                                Unit(name: "Gradians", method: UnitAngle.gradians),
                                Unit(name: "Revolutions", method: UnitAngle.revolutions),
                                Unit(name: "Arc Minutes", method: UnitAngle.arcMinutes),
                                Unit(name: "Arc Seconds", method: UnitAngle.arcSeconds),
    ]
}
