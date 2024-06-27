import UIKit
import Foundation

class Vehicle {
    var car: Car?
    var id: String
    init(car: Car? = nil, id: String) {
        self.car = car
        self.id = id
        print("\(self) allocated")
    }
    
    deinit {
        print("\(self) deallocated")
    }
}

class Car {
    var vehicle: Vehicle?
    var name: String
    init(vehicle: Vehicle? = nil, name: String) {
        self.vehicle = vehicle
        self.name = name
        print("\(self) allocated")
    }
    
    deinit {
        print("\(self) deallocated")
    }
}


// Allocated and deallocated as reference is not stored
print(Vehicle(id: "1234"))
print(Car(name: "Kia"))

// Only allocates the memory as it is stored in a variable
var vehicle: Vehicle? = Vehicle(id: "1234")
var car: Car? = Car(name: "Kia")


// Will try to dealloate above stored memory here but it won't as both are refering each other with strong reference
vehicle = nil
car = nil

// Inorder to deallocate the memory here we need to make eight of one "veicle or car" a weak reference
// so let's say if we rewrite the car class as below then the memory gets deallocated when make the object nil
// ------>
//class Car {
//    weak var vehicle: Vehicle?
//    var name: String
//    init(vehicle: Vehicle? = nil, name: String) {
//        self.vehicle = vehicle
//        self.name = name
//        print("\(self) allocated")
//    }
//    
//    deinit {
//        print("\(self) deallocated")
//    }
//}
