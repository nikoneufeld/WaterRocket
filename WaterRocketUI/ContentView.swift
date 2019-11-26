//
//  ContentView.swift
//  WaterRocketUI
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import SwiftUI
struct ContentView: View, RocketDelegate {
    // TODO: Add this
    init() {
        model.delegate = self
    }
    func didConect() {
        return
    }
    // TODO: Add this
    func didDisconnect() {
        return
    }
    var uiAltitude: Double {
        (model.altitude * 10).rounded() / 10
    }
    
    var uiMaxAltitude: Double {
        (model.maxAltitude * 10.0).rounded() / 10.0
    }
    
    var isConnected: Bool = false
    
    @ObservedObject var model = RocketMock()
    var body: some View {
        VStack {
            Text("Water Rocket Meter").font(.largeTitle).padding()
            Text("Properties")
                .font(.title).padding()
            
            HStack {
                
               VStack {
                    Text("Altitude:")
                        .fixedSize(horizontal: true, vertical: true).font(.subheadline)
                Text(String(format: "%4.1f", uiAltitude)).fixedSize(horizontal: true, vertical: true).font(.system(.body, design: .monospaced))
                }
                VStack {
                    Text("Maximum Altitude:").fixedSize(horizontal: true, vertical: true).font(.subheadline)
                    Text(String(format: "%4.1f", uiMaxAltitude)).fixedSize(horizontal: true, vertical: true).font(.system(.body, design: .monospaced))
                    
                    
                }
                    
                
                
            }
            Button(action: {self.model.fly(duration: 20)
                
            }) {
                Text("FLY").foregroundColor(.green).font(.subheadline)
            }
            
            Button(action: model.reset) {
                Text("Reset").fontWeight(.heavy)
            }
        }.frame(width: 350, height: 350, alignment: .center)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
