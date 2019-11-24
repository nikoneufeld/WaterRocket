//
//  RocketMock.swift
//  WaterRocketUI
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import Foundation
import Combine
/// A  mock for our model with out butooth, so th ui designer can see our model!
class RocketMock: Rocket {
    var objectWillChange: PassthroughSubject<Void, Never>
    
    var altituide: Double
    
    var delegate: RocketDelegate?
    
    var maxAltitude: Double
    
    func reset() {
        objectWillChange.send()
    }
    
    func clearMaxAlt() {
        <#code#>
    }
    
    
}
