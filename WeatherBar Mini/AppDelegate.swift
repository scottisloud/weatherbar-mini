//
//  AppDelegate.swift
//  WeatherBar Mini
//
//  Created by Scott Lougheed on 2020/3/12.
//  Copyright © 2020 Scott Lougheed. All rights reserved.
//

import AppKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
	let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)


	func applicationDidFinishLaunching(_ aNotification: Notification) {
		if let button = statusItem.button {
			button.imagePosition = .imageTrailing
			button.title = "100º"
			
			// FIXME: Image needs to be changed according to forecast.
			let image = NSImage(imageLiteralResourceName: "rain")
			image.size = NSSize(width: 32, height: 32)
			button.image = image
			
		}
		
		statusItem.menu = NSMenu()
		addStatusBarMenuItem()
		
	}
	
	func addStatusBarMenuItem() {
        let settings = NSMenuItem(title: "Settings", action: #selector(showSettings), keyEquivalent: "s")
        statusItem.menu?.addItem(settings)
        let quit = NSMenuItem(title: "Quit", action: #selector(exitNow), keyEquivalent: "q")
        statusItem.menu?.addItem(quit)
        
    }
	
	
	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}

	@objc func showSettings() {
		
	}
	
	@objc func exitNow() {
		NSApplication.shared.terminate(self)
	}

}

