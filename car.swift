//
//  car.swift
//  rallyRace
//
//  Created by Roohi Singh on 2019-10-22.
//  Copyright © 2019 Roohi Singh. All rights reserved.
//

import Foundation
class Car: Vehicle
{
    var category : String
    func  getCategory()-> String
    {
        return category
    }
    
    init(name : String, speedMax : Double, weight: Int, fuel : Int, category : String)
    {
        self.category = category
        super.init(name: name, speedMax: speedMax, weight: weight, fuel: fuel)
    }
    
    override func display() ->String
    {
        return("\(name) -> speed max = \(speedMax) km/h, weight = \(weight)Kg, Category: \(category)" )
    }
    
    override func isTwoWheeled() -> Bool
    {
        return false
    }
    
}
