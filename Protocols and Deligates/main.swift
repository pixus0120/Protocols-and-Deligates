
protocol AdvancedLifeSupport {
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?   // must have adnancedLifeSupport  !!!!
    
    func assessSituation() {
        print("Can tell me what happend?")
    }
    func medicalEmergency() {
        delegate?.performCPR()
        print("emergency situation")
    }
}


struct Paramedic: AdvancedLifeSupport {   // must have adnancedLifeSupport
    init(handler: EmergencyCallHandler) {    //!!!!
        handler.delegate = self
    }
    func performCPR() {
        print("The Paramedic does chest commpression")
    }
}

class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    func performCPR() {
        print("The Doctor does chest comp")
    }
    
    func useScopes() {                          // +  method
        print(" linsten the heart")
    }
}


class Surgeon: Doctor {                // subclass from doctor
    override func performCPR() {
        super.performCPR()
        print("singing")
    }
    func useInstruments() {
        print("Instruments")
    }

}

let emelio = EmergencyCallHandler()

let angela = Surgeon(handler: emelio)
angela.useInstruments()
let john = Doctor(handler: emelio)
let pete = Paramedic(handler: emelio)    //!!!

pete.
emelio.medicalEmergency()

