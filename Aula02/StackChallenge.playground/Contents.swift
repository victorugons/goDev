// MARK: Implementação da Stack
struct Stack {
    private var elements: [Int] = []
    
    mutating func push(newElement: Int) {
        elements.append(newElement)
    }
    
    mutating func pop() -> Int{
        if elements.count > 0 {
            return elements.removeLast()
        }
        
        else {
            print("Fail. Stack is already empty.")
            return -1
        }
    }
    
    func printStack() {
        print(elements)
    }
    
    
}

// MARK: Testes de funcionalidade
var stack: Stack = Stack()

stack.push(newElement: 10)
stack.printStack()
stack.push(newElement: 20)
stack.printStack()
let poppedNumber: Int = stack.pop()
print(poppedNumber)
stack.printStack()
stack.pop()
stack.pop()
stack.printStack()
