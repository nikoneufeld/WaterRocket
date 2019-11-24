//
//  AppDelegate.swift
//  WaterRocketUI
//
//  Created by Niko Neufeld on 11/24/19.
//  Copyright © 2019 Niko Neufeld. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var contentView = ContentView()

    var window: NSWindow!

    @IBAction func reser(_ sender: Any) {
        contentView.model.reset()
    }
    
    @IBAction func fly(_ sender: Any) {
        contentView.model.fly(duration: 20)
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        
       
        
        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

