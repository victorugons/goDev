// Criando uma extension
extension String {
    func toRandomCase() -> String{
        let test: Int = Int.random(in: 0...1)
        if test == 1 {
            return self.lowercased()
        }
        else {
            return self.uppercased()
        }
    }
}

var string: String = "Testing The New Function"

string.toRandomCase()

// Criando uma herança entre classes

class Person {
    
    var name: String
    var birthYear: Int
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
    }
    
    func greetings() {
        print("Hello! I'm \(name). I was born in \(birthYear).")
    }
}

class Employee: Person {
    
    var role: String
    var company: String
    
    init (name: String, birthYear: Int, role: String, company: String) {
        self.role = role
        self.company = company
        super.init(name: name, birthYear: birthYear)
        
    }
    
    override func greetings() {
        print("Hello! I'm \(name). I was born in \(birthYear). I work as a/an \(role) at \(company).")
    }
}

var employee: Employee = Employee(name: "John Doe", birthYear: 1999, role: "Assistant", company: "Farmco INC")

employee.greetings()
