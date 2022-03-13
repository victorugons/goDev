/**
 Switch case
 Enum
 Introdução: Programação funcional
 */

enum clientErrors: String {
    case badRequest = "400", unauthorized = "401", paymentRequired = "402", forbidden = "403", notFound = "404"
}

var currentError: clientErrors = .paymentRequired

switch currentError  {
case .badRequest: print("Client Error 400 - Bad Request")
    
case .unauthorized: print("Client Error 401 - Unauthorized")

case .paymentRequired: print("Client Error 402 - Payment Required")
    
case .forbidden: print("Client Error 403 - Forbidden")
    
case .notFound: print("Client Error 404 - Not Found")
}

var array: [String] = ["Monday", "Jihan", "Soeun", "Zoa", "Jaehee", "Jiyoon", "Soojin"]

var orderedArray = array.sorted { (nome1: String, nome2: String) -> Bool in
    if nome1.count == nome2.count {
        return nome1 < nome2
    }
    return nome1.count < nome2.count
}

var newArray: [String] = array.map{ $0+"!"}

var filteredArray: [String] = array.filter{ $0.contains("a")}

print(orderedArray)
print(newArray)
print(filteredArray)
