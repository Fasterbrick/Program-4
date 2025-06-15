//
//  AppDelegate.swift
//  Program 4
//
//  Created by swift on 15/06/2025.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    
    @IBOutlet weak var xTextField: NSTextField!
    @IBOutlet weak var yTextField: NSTextField!
    @IBOutlet weak var resultLabel: NSTextField!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    @IBAction func compareButtonClicked(_ sender: Any) {
        let xString = xTextField.stringValue
        let yString = yTextField.stringValue
        guard let x = Double(xString), let y = Double(yString) else {
            resultLabel.stringValue = "Invalid input. Enter numbers."
            return
        }
        if x > y {
            resultLabel.stringValue = "X is greater than Y"
        } else if x < y {
            resultLabel.stringValue = "X is less than Y"
        } else {
            resultLabel.stringValue = "X is equal to Y"
        }
    }

}
