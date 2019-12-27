//
//  AppDelegate.swift
//  FIrstMacAPP
//
//  Created by Vinod on 12/26/19.
//  Copyright © 2019 gsmplus. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        statusItem.button?.title = "CopyText"
        statusItem.button?.target = self
        statusItem.button?.action = #selector(showSetting)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    @objc func showSetting() {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateController(withIdentifier: "ViewController") as? ViewController else {
            fatalError("Unable load ViewController")
        }
        
        guard let button = statusItem.button else {
            fatalError("Could not load button")
        }
        
        let popOver = NSPopover()
        popOver.contentViewController = vc
        popOver.behavior = .transient
        popOver.show(relativeTo: button.bounds, of: button, preferredEdge: .maxY)
        
    }

}

