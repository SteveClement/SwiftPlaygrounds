//: Playground - noun: a place where people can play

// THIS IS AN iOS PLAYGROUND
import UIKit
import Foundation
//import SpriteKit

//extension Double {
//    func format(f: String) -> String {
//        return NSString(format: "%\(f)d",self) as String
//    }
//}

var i: Int
// for each-item in some-collection
for i in 30..<150 {
    let rect = CGRect(x: 20, y: 20, width: i, height: 100 )
    println("\(i)")
    var Path = UIBezierPath(ovalInRect: rect )
    Path.fill()
    UIColor.purpleColor()
}

i = 0
while i < 150 {
    i
    i += 1 // i = i + 1 - Also works with =-
}

i = 0
do {
    i
    i += 1
} while i < 150

// Classes
class Anatidae {

    var name : String
    var color : String
    var quack : Bool
    
    init() {
        println("Just loaded the Duck class")
        name = "Donald Duck"
        color = "brown"
        quack = false
    }
    
    init(name: String, color: String, quack: Bool) {
        self.name = name
        self.color = color
        self.quack = quack
    }
    
    deinit {
        // de-initializer, used mostly for stuff that needs closure
    }
}

class Duck: Anatidae {
    // additional methods
    func quack() -> String {
        if self.quack {
        return("Quaaaack!")
        } else {
            return("I do not Quaaaack!")
        }
    }
    
    func walk() -> String {
        return("Duck Walk")
    }

    
}

var donald = Anatidae()
println("I am a Duck called: \(donald.name) and my color is \(donald.color)")

var anotherDuck = Anatidae(name: "Scrooge", color: "money", quack: true)

println("I am a Duck called: \(anotherDuck.name) and my color is \(anotherDuck.color)")

var ronald = Duck()
ronald.name = "Ronald Ruck"
ronald.quack = false
ronald.color = "green"
println(ronald.quack())
println(ronald.walk())
println(anotherDuck.quack)

// More variables
var str = "Hello, playground"

var highScore = 42

highScore = highScore + 10

for i in 0..<100 {
    highScore = highScore + i
    if i == 42 {
    "yay 42 reached"
    }
}

var isActive = true
var debug  = false
var firstName = "Jane Doe"

// firstName = 42


// data types
var myInt : Int

var myFloat : Float
var myChar : Character

var myDouble : Double
var myBool : Bool

// variables and constants

var myString = "Yuhu, where are you?"
myString = "Let's change this"

let myMessage  = "You are error"
//myMessage = "NO I am RIGHT"

myMessage

// or better get used to

println(myMessage)

// String interpolation

println("This just happened: \(myMessage)")

let label = "The width is "
let width = 13
let widthLabel = "foo \(label) + \(width + 5)"

var randomList = [ "foo", "bar", "whatever"]

randomList
randomList[1]
randomList[1] = "replacement"
randomList

for stuff in randomList {
    println(stuff)
}

// More magic

let fun = 23
let answer = 42

println("If you multiply fun (\(fun)) by THE answer (\(answer)) you will get: \(fun * answer)")

println("If you divide fun (\(fun)) by THE answer (\(answer)) you will get: \(fun / answer)")

let tinyAnswer = 4.2 // It inferes a Float, pretty clear

//println("If you multiply fun (\(fun)) by THE answer (\(answer)) you will get: \(fun * tinyAnswer)")

println("If you multiply fun (\(fun)) by THE tinyAnswer (\(answer)) you will get: \(Double(fun) * tinyAnswer)")


// -> /!\ NO implicit converions!!! do it with Int(), Float(), Double(), String() etc…

let dog: Character = "🐶"
let cow: Character = "🐮"
let dogCow = "\(dog)\(cow)"
// dogCow is equal to "🐶🐮"


// Encoding UTF-8 - UTF-16 - ISOfoo see -> https://en.wikipedia.org/wiki/Character_encoding
let dogString = "Dog!🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ")
}
print("\n")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ")
}
print("\n")

// Example with a switch statement

let numberSymbol: Character = "三"  // Simplified Chinese for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    println("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    println("An integer value could not be found for \(numberSymbol).")
}
// prints "The integer value of 三 is 3.


// Optionals
//var optName: String? = "Steve C"
var optName: String?
if optName != nil {
    println("Glad to see you \(optName)")
} else {
    println("No user seen yet")
}

let veggie = "cucumber"

switch veggie {
case "celery":
    let veggieComment = "Add some raisins and make ants on a log."
    
case "cucumber", "watercress":
    let veggieComment = "That would make a great sandwich"
case let x where x.hasSuffix("pepper"):
    let veggieComment = "Is it a spicy \(x)?"
default:
    let veggieComment = "Everything tastes good in soup"
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest

// Dictionaries


