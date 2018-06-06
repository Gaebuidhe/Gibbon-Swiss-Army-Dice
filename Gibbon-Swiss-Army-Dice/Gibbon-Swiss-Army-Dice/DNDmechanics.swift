//
//  DNDmechanics.swift
//  Gibbon-Swiss-Army-Dice
//
//  Created by Joseph Frazier on 6/4/18.
//  Copyright © 2018 Joseph Frazier. All rights reserved.
//

import UIKit

class DNDmechanics{
    
    static func adndAttack(nroll: Int, nthaco: Int) -> String{
        //sets up return variable
        var hitDC: String = ""
        
        //creates
        let roll: Int = nroll
        let thaco: Int = nthaco
        let ac = thaco - roll
        
        
        //simple mechanics first 20's hit 1's miss
        //followed by roll/thaco comparison
        if(nroll == 20){
            hitDC = "You Hit!"
        }
        else if (nroll == 1){
            hitDC = "You Missed!"
        }
        else {
            hitDC = "You hit Armor Class " + String(ac) + "!"
        }
        
        return hitDC
    }
    
    static func dcCheck(nroll:Int, ndc:Int, nbonus:Int){
        
    }
    
    static func adndProf(nroll: Int, natb: Int, nbonus:Int)->String{
        //sets up return variable
        var profCheck: String = ""
        
        
        return profCheck
    }
    
    
}
