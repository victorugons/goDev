/**
 Optional e Default Value
 If Let e Guard Let
 Functions
 Closure
 */

var dictionary: [String: String] = ["Name": "Ana"]

var studentName: String?

var studentFullName: String? = studentName ?? "Jane" + "Doe"

func greetings() {
    if let name = dictionary["Name"] {
        print(name)
    }
    print("Welcome to the iOS Development World!")
}

func getEducation(name: String?) {
    guard let name = name else {return}
    
    print("\(name) study at Gama Academy")
}

getEducation(name: dictionary["Name"])
getEducation(name: studentName)

func getFinalGrade(calcFunc: (_ grade1: Double, _ grade2: Double, _ grade3: Double) -> Double) {
    var grades: [Double] = []
    for _ in 1...3 {
        grades.append(Double.random(in: 1.00...10.00))
    }
    print("Your final grade is \(calcFunc(grades[0], grades[1], grades[2]))")
}

getFinalGrade(calcFunc: {(grade1: Double, grade2: Double, grade3: Double) -> Double in
    return ((grade1*2)+(grade2*3)+(grade3*5))/10
})






