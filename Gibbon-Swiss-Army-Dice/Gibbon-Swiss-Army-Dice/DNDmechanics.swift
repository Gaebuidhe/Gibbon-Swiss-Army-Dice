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
        
        //sets roll and thaco constants so value does not change
        let roll: Int = nroll
        let thaco: Int = nthaco
        
        //creates ac number to be returned if not 1 or 20 on roll
        let ac: Int = thaco - roll
        
        
        //simple mechanics first 20's hit 1's miss
        //followed by roll/thaco comparison
        if(nroll == 20) {hitDC = "You Hit!"}
        else if (nroll == 1) {hitDC = "You Missed!"}
        else {hitDC = "You hit Armor Class " + String(ac) + "!"}
        
        return hitDC
    }

    static func adndProf(nroll: Int, natb: Int, nbonus:Int)->String{
        //sets up return variable
        var profCheck: String = ""
        
        //sets roll constant so value does not change
        let roll: Int = nroll
        
        //sets ability constant with modified bonuses
        let abl: Int = natb + nbonus
        
        //20's always fail
        //else if the roll is less than or equal to the modified ability = success
        if (roll == 20) {profCheck = "You Failed!"}
        else if (roll > abl) {profCheck = "You Failed!"}
        else if (roll <= abl) {profCheck = "You Succeeded!"}
        
        return profCheck
    }
    
    static func initRoll(nroll: Int, nbonus:Int){
        
    }
    
    static func dcCheck(nroll:Int, ndc:Int, nbonus:Int){
        
    }
}
