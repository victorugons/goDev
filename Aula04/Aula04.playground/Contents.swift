/**
 Classes
 Strcuts
 Extension and Protocol
 */

protocol GetInfo {
    func getInfo() -> Void
}
class Student: GetInfo {
    
    private let name: String
    private let birthYear: Int
    private var classNumber: String
    
    init(name: String, birthYear: Int, classNumber: String) {
        self.name = name
        self.birthYear = birthYear
        self.classNumber = classNumber
    }
    
    func setClassNumber(classNumber: String) {
        self.classNumber = classNumber
    }
    
    func getInfo() {
        print("Student Name: \(name), Birth Year: \(birthYear), Class Number: \(classNumber)")
    }
}

let student: Student = Student(name: "Jane Doe", birthYear: 1993, classNumber: "801")

student.getInfo()

struct School: GetInfo{
 
    var name: String
    var foundationYear: Int
    var isPublic: Bool
    var address: String
    
    func getInfo() {
        let status: String
        if isPublic {
            status = "Public"
        }
        else {
            status = "Private"
        }
        print("School name: \(name), Foundation: \(foundationYear), Status: \(status), Address: \(address)")
    }
}

let school = School(name: "Gama Academy", foundationYear: 2010, isPublic: false, address: "New Avenue, 900" )

school.getInfo()


extension Double {
    var realToDolar: Double { return self * 5.08 }
}

var real: Double = 22.50

print(real.realToDolar)
