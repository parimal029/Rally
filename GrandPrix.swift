//
//  GrandPrix.swift
//  rallyRace
//
//  Created by Roohi Singh on 2019-10-22.
//  Copyright © 2019 Roohi Singh. All rights reserved.
//

import Foundation
class GrandPrix: Rally
 {
     init() {
    }
     
     var vehicles = [Vehicle]()
     
     func add(vehicle: Vehicle)
      {
         vehicles.append(vehicle)
     }
     
      func check() -> Bool
     {
          for i in vehicles
         {   if i.isTwoWheeled()
             {
                 return false
               }
         }
         return true
      }
     
     func run(turn: Int)
     {
         var turns = turn
         var aliveVehicles = [Vehicle]()
         var mostEfficientVehicle: Vehicle
         if check()
         {
              // Race Begins
             while turns>0
             {
                 for i in vehicles
                 {
                      i.fuel = i.fuel - 1
                  }
                  turns = turns - 1
              }
             
             // Finish Line (Race Finished)
             
             
             // Determining the remaining vehicles
             for i in vehicles
             {
                 if i.fuel>0
                 {
                      aliveVehicles.append(i)
                 }
              }
             
             
             
             //Check the fuel of alive vehicles
             
             if(aliveVehicles.count>0)
             {
                 mostEfficientVehicle = aliveVehicles[0]
                 for i in aliveVehicles
                 {
                     if mostEfficientVehicle.fuel < i.fuel
                     {
                         mostEfficientVehicle = i
                     }
                 }
                 print("The winner of the Grand Prix is: ")
                 print(mostEfficientVehicle.display())
             }
              else
             {
                  print("All the vehicles failed to finished the rally")
             }
         }
         else
         {
             print("Not Grand Prix")
         }
     }
     
}
