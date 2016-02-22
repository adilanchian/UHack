//
//  InterfaceControllerFight.swift
//  The Forest
//
//  Created by Alec Dilanchian on 2/21/16.
//  Copyright © 2016 Alec Dilanchian. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerFight: WKInterfaceController {
    
    @IBOutlet var bodyImage: WKInterfaceButton!
    @IBOutlet var bodyLabel: WKInterfaceLabel!
   
    
    let winOrLose = Int(arc4random_uniform(2))
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if winOrLose == 1
        {
            // This is a win
            bodyLabel.setText("Success Proceed.")
        }
        
        else if winOrLose == 0
        {
            // This is a loss
            bodyLabel.setText("Fail You're Dead.")
        }
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
