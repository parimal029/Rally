//
//  motor.swift
//  rallyRace
//
//  Created by Roohi Singh on 2019-10-22.
//  Copyright © 2019 Roohi Singh. All rights reserved.
//

import Foundation
class Moto : Vehicle
{
    var sidecar : Bool = false
    
    init(name : String, speedMax : Double, weight : Int, fuel : Int, sidecar : Bool)
    {
        self.sidecar = sidecar
        super.init(name : name, speedMax : speedMax, weight : weight, fuel : fuel)
    }
    
    override init(name : String, speedMax : Double, weight : Int, fuel : Int)
    {
        super.init(name : name, speedMax : speedMax, weight : weight, fuel : fuel)
    }
    
    override func isTwoWheeled() -> Bool
    {
        if sidecar
        {
            return false
        }
        else
        {
            return true
        }
    }
    override func display() -> String
    {
        if sidecar == true
        {
            return("\(name) -> speedMax = \(speedMax) km/h, weight = \(weight) kg, with sidecar")
        }
        else
        {
            return("\(name) -> speed max = \(speedMax) km/h, weight = \(weight) kg")
        }
    }
    
}

