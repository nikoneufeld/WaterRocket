//
//  Rocket.swift
//  WaterRocketUI
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import Foundation
/// This ia a protocol which defines our model. With this we can do diffrent implementations
protocol Rocket: ObservableObject   {
    /// The altitude of the rocket
    
     var altituide: Double {get}
    /// The rocket delegate,  see RocketDelegate
    var delegate: RocketDelegate? { get set  }
    /// The maximum altitude of the rocket
    var maxAltitude: Double {get }
    /// Resets the altutude propety
    func reset()
    /// Clears the max altitude
    func clearMaxAlt()

}

