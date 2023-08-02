//
//  AppDelegate.swift
//  myPlayer
//
//  Created by lsm on 2023/8/1.
//

import Cocoa
import Logging
import SwiftUI

var player = AudioPlayer()
var flog = Logger(label: "org.ffactory.fmusic")

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        openWindows()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if !flag {
            openWindows()
            return true
        }
        return false
    }

    func openWindows() {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView(player: player)
        // Create the window and set the content view.
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 800, height: 600),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .unifiedTitleAndToolbar],
            backing: .buffered, defer: false)
        let hostingView = NSHostingView(rootView: TitlebarView(player: player))
        let titlebarAccessory = NSTitlebarAccessoryViewController()
        titlebarAccessory.view = hostingView
        window.addTitlebarAccessoryViewController(titlebarAccessory)
        window.titlebarAppearsTransparent = true
        window.titleVisibility = .hidden
        window.isReleasedWhenClosed = false
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

    override init() {
        super.init()
#if DEBUG
        flog.logLevel = .debug
#endif
    }
}
