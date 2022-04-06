//
//  DimensionProtocol.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

protocol DimensionProtocol {
    static var unitOfMeasurement: String { get }
    static var nsDimensionSubclass: String { get }
    static var baseUnit: String { get }
    static var units: [Unit] { get }    
}
