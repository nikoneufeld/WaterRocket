//
//  RocketDelegate.swifrt.swift
//  WaterRocketUI
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import Foundation
/// Recieves all the commadns
///
protocol RocketDelegate {
    /// If the ble reciver is connected
    func didConect()
    /// If the ble reciver disconnected
    func didDisconnect()
    /// If it is connected
    var isConnected: Bool { get }
}
