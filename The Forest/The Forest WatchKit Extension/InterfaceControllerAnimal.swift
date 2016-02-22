//
//  InterfaceControllerAnimal.swift
//  The Forest
//
//  Created by Alec Dilanchian on 2/21/16.
//  Copyright © 2016 Alec Dilanchian. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerAnimal: WKInterfaceController {

    @IBOutlet var bodyLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
//        let weapon = context as! String
        // Configure interface objects here.
        
        let animal = randomAnimal()
        
        bodyLabel.setText("Suddenly, a \(animal) appears. What will you do?")
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func randomAnimal() -> String {
        var animalArray = ["dog", "unicorn", "bear", "coyote", "T-Rex"]
        let random = Int(arc4random_uniform(6))
        
        let animal = animalArray[random]
        
        return animal
    }


}
