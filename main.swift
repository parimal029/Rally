//
//  main.swift
//  rallyRace
//
//  Created by Roohi Singh on 2019-10-22.
//  Copyright © 2019 Roohi Singh. All rights reserved.
//
let v0 = Vehicle()
let v1 = Vehicle(name: "Ferrari", speedMax: 300.0, weight: 800, fuel: 30)
let v2 = Vehicle(name: "Renault Clio", speedMax: 180.0, weight: 1000, fuel: 20)
let v3 = Vehicle(name: "Maruti Swift", speedMax: 180.0, weight: 800, fuel: 15)
let v4 = Vehicle(name: "Honda Civic", speedMax: 200.0, weight: 1000, fuel: 18)
let v5 = Vehicle(name: "BMW", speedMax: 230.0, weight: 1000, fuel: 20)
let vt1 = Car(name: "Lamborghini", speedMax: 320, weight: 1200, fuel: 40, category: "race car")
let vt2 = Car(name: "BMW", speedMax: 190, weight: 2000, fuel: 35, category: "touring car")
let m1 = Moto(name: "Honda", speedMax: 200.0, weight: 250, fuel: 15, sidecar: true)
let m2 = Moto(name: "Kawasaki", speedMax: 280.0, weight: 180, fuel: 10,sidecar: false)
let gp1 = GrandPrix()
let gp2 = GrandPrix()
let gp3 = GrandPrix()
let gp4 = GrandPrix()

var arr = [Vehicle]()
arr.append(v1)
arr.append(v2)
arr.append(v3)
arr.append(v4)
arr.append(v5)
arr.append(vt1)
arr.append(vt2)
arr.append(m1)
arr.append(m2)

func runPart1() {
    // part 1
    print("====================Test part 1 : ================")
    print("==================================================")


    print(v0.display())
    print(v1.display(), v2.display(),v3.display(),v4.display(),v5.display(), separator: "\n")

    if v1.better(otherVehicle: v2) {
        print("Ferrari is better among all cars")
    } else if(v2.better(otherVehicle: v3)) {
        print("Renault Clio is better Among all Cars")
    }
    else if(v3.better(otherVehicle: v4)) {
        print("Maruti Swift is better Among all Cars")
    }
    else if(v4.better(otherVehicle: v5)) {
        print("Honda Civic is better Among all Cars")
    }
    else{
        print("BMW is better among all cars")
    }
    // end of part 1

}
func runPart2() {
    // part 2
    print("")
    print("====================Test part 2 : ================")
    print("==================================================")
    print(m1.display(), m2.display(),separator :"\n")

    print(vt1.display(), vt2.display(),separator : "\n")
    // end of part 2

}
func runPart3() {
    // part 3
    print("")
    print("====================Test part 3 : ================")
    print("==================================================")

    
    gp1.add(vehicle: v0)
    gp1.add(vehicle: v0)
    print(gp1.check())

    gp2.add(vehicle: vt1)
    gp2.add(vehicle: vt2)
    gp2.add(vehicle: m2)
    print(gp2.check())

    gp3.add(vehicle: vt1)
    gp3.add(vehicle: vt2)
    gp3.add(vehicle: m1)
    print(gp3.check())

    gp4.add(vehicle: m1)
    gp4.add(vehicle: m2)
    print(gp4.check())
    // end of part 3

}
func runPart4() {
    // part 4
    print("")
    print("====================Test part 4 : ================")
    print("==================================================")


    let gp5 = GrandPrix()
    gp5.add(vehicle: vt1)
    gp5.add(vehicle: vt2)
    //gp5.add(vehicle: v1)
    //gp5.add(vehicle: v2)

    print("First round:")
    gp5.run(turn: 10)
    print("")

    print("Second round:")
    gp3.run(turn: 50)
    print("")

    print("Third round:")
    gp2.run(turn: 30)
    // end of part 4
}
func addNewCar() {
    
    print("Enter name of car")
    var name = readLine()!
    print("Enter fuel")
    var fuel = Int(readLine()!)!
    print("Enter speed")
    var speed = Double(readLine()!)!
    print("Enter weight")
    var weight = Int(readLine()!)!
    print("Enter Category ('r' for racing or 't' for touring)")
    var category = readLine()
    var categoryStr = "t"
    if(category=="r"){
        categoryStr = "racing"
    }
    
    var newCar = Car(name: name, speedMax: speed, weight: weight, fuel: fuel, category: categoryStr)
    arr.append(newCar)
    print("car with the name \(name) speed of \(speed) of weight \(weight) with fuel \(fuel) of category \(categoryStr) has been added successfully")
    print(arr.endIndex)
}
    func addNewBike(){
        print("Enter name of bike")
        var name = readLine()!
        print("Enter fuel")
        var fuel = Int(readLine()!)!
        print("Enter speed")
        var speed = Double(readLine()!)!
        print("Enter weight")
        var weight = Int(readLine()!)!
        print("SideCar Available (press 'Y' for Yes or 'N' for No)")
        var categoryStr = readLine()!
        var sideCar = false
        if( categoryStr == "Y"){
            sideCar = true
        }

        var newMoto = Moto(name: name, speedMax: speed, weight: weight, fuel: fuel, sidecar: sideCar)
        arr.append(newMoto)
        print("New motorBike with name  \(name) of speed \(speed) km/hr with fuel \(fuel) and weight \(weight) which has sidecar \(sideCar) added successfully!")
        print(arr.endIndex)
    }
var userinput = 1
repeat {
    print("=====================================================")
    print("\n             RALLY RACE ABOUT TO BEGIN")
    print("  Press 1 -> To compare Vehicles on the basis of performance")
    print("  Press 2 -> To display the vehicles about to race")
    print("  Press 3 -> To check eligiblity of the vehicle for the race")
    print("  press 4 -> To launch the race and find the winner! ")
    print("  Press 5 -> To add Car")
    print("  Press 6 -> To add Motorcycle")
    
    print("Choose Option to Perform Operation:")
    
    if let input = Int(readLine()!) {
        userinput = input
        if(input == 1) {
            runPart1()
        }
        if(input==2){
            runPart2()
        }
        if(input==3){
            runPart3()
        }
        if(input==4){
            runPart4()
        }
        if(input == 5) {
            addNewCar()
        }
        if(input==6){
            addNewBike()
        }
    }
    
} while (userinput < 7 && userinput > 0)

