//
//  StructUnitType+Identifier.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

extension DimensionProtocol {
    static func getNSDimensionSubclass() -> String  {
        return "Unit\(String(describing: Self.self))"
    }
}
