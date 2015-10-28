//
//  InterfaceController.swift
//  midterm WatchKit Extension
//
//  Created by csc313 on 10/28/15.
//  Copyright © 2015 alex. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var thePicker: WKInterfacePicker!
    @IBOutlet var theButton: WKInterfaceButton!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var thePickerItems = [WKPickerItem]()
        for(var i = 1; i <= 1000; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i-1].title = "\(i)"
        }
        
        self.thePicker.setItems(thePickerItems)
        
        
        // Configure interface objects here.
    }

    @IBAction func pickerMoved(value: Double) {
        Singleton.pickerNum = (value + 1)
        
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func buttonClicked() {
        self.presentControllerWithName("pageTwo", context: "")
        
    }
}
