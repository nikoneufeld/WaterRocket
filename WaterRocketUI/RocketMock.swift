//
//  RocketMock.swift
//  WaterRocketUI
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import Foundation
import Combine
import Dispatch

/// A  mock for our model with out bluetooth, so th ui designer can see our model!
class RocketMock: Rocket {
    init() {
        altitude = 0.0
        maxAltitude = 0.0
    }
    var objectWillChange = PassthroughSubject<Void, Never>()
    
    var altitude: Double {
        didSet{objectWillChange.send()}
    }
    
    var delegate: RocketDelegate? {
        didSet{objectWillChange.send()}
    }
    
    var maxAltitude: Double {
        didSet{objectWillChange.send()}
    }
    
    func reset() {
        altitude = 0.0
        maxAltitude = 0.0
    }
    func clearMaxAlt() {
        maxAltitude = 0.0
    }
    // simulator specific methods & properties
        
    // simulate a flight of duration with timeResolution in seconds
    func fly(duration: Int, timeResolution: Double = 0.1) {
        let queue = DispatchQueue.global()
        let work = DispatchWorkItem(block: {
            var t = 0.0
            self.altitude = 0.0
            while (t < Double(duration) / 2.0) {
                self.altitude = 9.81 * t * t / 2.0
                if self.maxAltitude < self.altitude {
                    self.maxAltitude = self.altitude
                }
                print(t,self.altitude)
                usleep(useconds_t(1000000.0 * timeResolution))
                t += timeResolution
            }
            t = 0.0
            while (t < Double(duration) / 2.0) {
                self.altitude = self.maxAltitude - 9.81 * t * t / 2.0
                print(t,self.altitude)
                usleep(useconds_t(1000000.0 * timeResolution))
                t += timeResolution
            }
            //self.altitude = 0.0
        })
        queue.async(execute: work)
    }
    
}

