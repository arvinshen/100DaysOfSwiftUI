//
//  Dimensions.swift
//  UnitConverter
//
//  Created by Arvin Shen on 4/4/22.
//

import Foundation

struct Dimensions {
    static let dimensions: [DimensionProtocol.Type] = [Angle.self,
                                                     Area.self,
                                                     Duration.self,
                                                     Energy.self,
                                                     Frequency.self,
                                                     FuelEfficiency.self,
                                                     //InformationStorage.self,
                                                     Length.self,
                                                     //Mass.self,
                                                     //Pressure.self,
                                                     Speed.self,
                                                     Temperature.self,
                                                     //Volume.self,
    ]
}
