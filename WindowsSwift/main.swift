//
//  main.swift
//  WindowsSwift
//
//  Created by Ricardo Rachaus on 31/07/19.
//  Copyright © 2019 Ricardo Rachaus. All rights reserved.
//

import Cocoa

final class AppDelegate: NSObject, NSApplicationDelegate {
    
    var window: NSWindow
    
    override init() {
        let rect = NSRect(x: 0, y: 0, width: 400, height: 300)
        window = NSWindow(contentRect: rect,
                          styleMask: .titled,
                          backing: .buffered,
                          defer: false,
                          screen: nil)
        window.backgroundColor = NSColor(red: 0.8,
                                         green: 0.2,
                                         blue: 0.3,
                                         alpha: 1)
        super.init()
    }
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        let view = NSView(frame: .zero)
        window.contentView = view
        window.makeKeyAndOrderFront(nil)
    }
}

autoreleasepool {
    let delegate = AppDelegate()
    withExtendedLifetime(delegate) {
        let application = NSApplication.shared
        application.delegate = delegate
        application.run()
        application.delegate = nil
    }
}

