
import Foundation
//Protocols: (Defined 2 )

//Trailer Property: brand (String) Methods: startEngine(), stopEngine()
protocol Trailer{
    func startEngine()
    func stopEngine()
    var engineIsOn: Bool {get set}
}

//EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
protocol EntertainmentSystem{
    func turnOnTV()
    func turnOffTV()
    var hasTV: Bool {get set}
}


//Implement a class named Camper that conforms to any 2 of the 5 protocols.
class Camper: Trailer, EntertainmentSystem {
    
    var brand: String
    var engineIsOn: Bool
    var camperIsDriving: Bool
    var hasTV: Bool
    init() {
        self.engineIsOn = false
        self.camperIsDriving = false
        self.hasTV = true
        self.brand = "Scooby Van"
    }
    //2 methods for managing or interacting with the system.
    func turnOnTV() {
        if self.hasTV {
          print("Turn on the TV, please!.📺")
            self.hasTV = !self.hasTV
        }else{
            print("Dude the TV is already on!!!📺👀")
        }
    }
    func turnOffTV() {
        if !self.hasTV {
          print("Turn off the TV, please!💡📺")
            self.hasTV = !self.hasTV
        }else{
            print("Dude the TV is off!!!📺")
        }
    }
    
//    2 methods for managing or interacting with the system.
    func startEngine() {
        if !self.engineIsOn {
            print("Engine on the \(brand) is turned on, let's go for a cruise....🚘")
            self.engineIsOn = !self.engineIsOn
        }else{
            print("Dude....Engine of the \(brand) is already on!!!!! Drive....🚗")
        
        }
    }
    func stopEngine() {
        if self.engineIsOn{
            print("Engine is turned off on the \(brand).🚦")
            self.engineIsOn = !self.engineIsOn
        }else{
            print("Dude... The engine on the \(brand) is already off!!!🚧")
        }
    }
}

// testing the funtionality
var myCamper = Camper()

myCamper.startEngine()
myCamper.startEngine()
myCamper.stopEngine()
myCamper.startEngine()
myCamper.stopEngine()
myCamper.stopEngine()
myCamper.turnOnTV()
myCamper.turnOnTV()
myCamper.turnOffTV()
myCamper.turnOffTV()
myCamper.turnOnTV()

