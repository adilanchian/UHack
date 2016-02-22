//
//  InterfaceControllerLR.swift
//  The Forest
//
//  Created by Alec Dilanchian on 2/21/16.
//  Copyright © 2016 Alec Dilanchian. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerLR: WKInterfaceController {
    
    @IBOutlet var bodyLabel: WKInterfaceLabel!
    
    var wep: String?
    override func awakeWithContext(context: AnyObject?) {

        super.awakeWithContext(context)
        
        // Configure interface objects here.
//        if var wep = randomWeapon() as? String {
//            bodyLabel.setText(wep)
//        }
        
        let weapon = randomWeapon()
        bodyLabel.setText("You start to walk and notice a \(weapon). What will you do with it?")
        
    }
    
//    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
//        
//        let segueIdentifier = "weaponTrans"
//        return wep
//    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func randomWeapon() -> String {
        var weaponArray = ["gun", "spork", "shovel", "hammer", "rubber band bag"]
        let random = Int(arc4random_uniform(5))
        
        let weapon = weaponArray[random]
        
        return weapon
    }
    
}
