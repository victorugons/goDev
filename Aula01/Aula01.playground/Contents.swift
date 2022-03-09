/*
 Declaração de variaveis - var e let
 Tipagem e tipos primitivos (String, Int, Double, Float, Bool)
 Incremento e decremento
 Interpolação de Strings
 Condicional if
 Array, Tuples, Sets e Dictionaries
 */
var variable: String = "I'm a mutable variable!"

let constant: String = "I'm a constant!"

var number: Int = 0

number += 1

print("Now my value is: \(number)")

if (number > 0) {
    number = number - 1
    print("And now, it is: \(number)")
}

/**
 "Mutability of Collections

 If you create an array, a set, or a dictionary, and assign it to a variable, the collection that’s created will be mutable. This means that you can change (or mutate) the collection after it’s created by adding, removing, or changing items in the collection. If you assign an array, a set, or a dictionary to a constant, that collection is immutable, and its size and contents can’t be changed." on docs.swift.org
 */
var array: [Double] = [1.75, 1.88, 1.91]

var set: Set<Float> = []

for _ in 1...10 {
    set.insert(Float.random(in: 1.45...1.46))
}

print(set)

let tuple: (String, Int) = (name: "Victor", age: 21)

print("My name is \(tuple.0) and I'm \(tuple.1) years old.")

let dictionary: [String: Bool] = ["True": true, "False": false]

if dictionary["True"] != nil {
    print("Swift is awesome!")
}
