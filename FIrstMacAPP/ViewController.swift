//
//  ViewController.swift
//  FIrstMacAPP
//
//  Created by Vinod on 12/26/19.
//  Copyright © 2019 gsmplus. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {
    @IBOutlet var input: NSTextField!
    @IBOutlet var type: NSSegmentedControl!
    @IBOutlet var output: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
          typeChanged(self)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    @IBAction func typeChanged(_ sender: Any) {
        switch type.selectedSegment {
        case 0:
            output.stringValue = one(input.stringValue)
        case 1:
           output.stringValue = two(input.stringValue)
        case 2:
            output.stringValue = three(input.stringValue)
        case 3:
            output.stringValue = four(input.stringValue)
        default:
            output.stringValue = one(input.stringValue)
        }
        
    }
    func controlTextDidChange(_ obj: Notification) {
        typeChanged(self)
    }
    
    @IBAction func copyPaste(_ sender: Any) {
        NSPasteboard.general.clearContents()
        NSPasteboard.general.setString(output.stringValue, forType: .string)
        
    }
    
    func one(_ input: String) -> String{
       return "one: " + input
    }
    func two(_ input: String) -> String{
       return "two: " + input
    }
    func three(_ input: String) -> String{
       return "three: " + input
    }
    func four(_ input: String) -> String{
       return "four: " + input
    }
    
}

