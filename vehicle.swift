//
//  vehicle.swift
//  rallyRace
//
//  Created by Roohi Singh on 2019-10-22.
//  Copyright © 2019 Roohi Singh. All rights reserved.
//

import Foundation
class Vehicle 
{
    var name : String
    var speedMax : Double
    var weight : Int
    var fuel : Int
    
    init(name : String, speedMax : Double, weight : Int, fuel : Int)
    {
        self.name = name
        self.speedMax = speedMax
        self.weight = weight
        self.fuel = fuel
    }
    
    init()
    {
        name = "Anonym"
        fuel = 0
        speedMax = 130
        weight = 1000
    }
    func display() -> String
    {
        return("\(name) -> speed max = \(speedMax) km/h, weight = \(weight)  kg")
    }
    

    //function for better vehicle
func better(otherVehicle : Vehicle) -> Bool
    {
        return((performance() > otherVehicle.performance()))
    }
    
    //function for calculating performance of vehicle
    func performance() -> Double
    {
        var performanceCheck : Double
        performanceCheck = speedMax / Double(weight)
        return(performanceCheck)
    }
    
//getters and setters
    var Name : String
    {
        set(newValue)
        {
            name = newValue
        }
        get
        {
        return name
        }
    }

    var SpeedMax : Double
    {
        set (newValue)
        {
            speedMax = newValue
        }
        get
        {
            return speedMax
        }
    }
        var Weight : Int
    {
        set (newValue)
        {
            weight = newValue
        }
        get
        {
            return weight
        }
    }
    var Fuel : Int
    {
        set (newValue)
        {
        fuel = newValue
        }
        get
        {
        return fuel
        }
    }
    
    //function for checking weather the vehicle is two wheeler
    func isTwoWheeled() -> Bool
    {
        return false
    }
}

