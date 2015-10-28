//
//  pageTwo.swift
//  midterm
//
//  Created by csc313 on 10/28/15.
//  Copyright © 2015 alex. All rights reserved.
//

import WatchKit
import Foundation


class pageTwo: WKInterfaceController {

    @IBOutlet var theTable: WKInterfaceTable!
    @IBOutlet var theLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        var orig = Singleton.pickerNum
        self.theLabel.setText("\(Singleton.pickerNum) Mbps")
        var bps = (orig/8)*1024*1024
        var kps = (orig/8)*1024
        var mps = (orig/8)
        var gps = (orig/8)/1024
        
        
        self.theTable.setNumberOfRows(4, withRowType: "cell")
        
        
        var currRow = self.theTable.rowControllerAtIndex(0) as! convertRow
        currRow.theRowLabel.setText("\(bps) B/S")
        currRow = self.theTable.rowControllerAtIndex(1) as! convertRow
        currRow.theRowLabel.setText("\(kps) K/S")
        currRow = self.theTable.rowControllerAtIndex(2) as! convertRow
        currRow.theRowLabel.setText("\(mps) M/S")
        currRow = self.theTable.rowControllerAtIndex(3) as! convertRow
        currRow.theRowLabel.setText("\(gps) G/S")
        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
