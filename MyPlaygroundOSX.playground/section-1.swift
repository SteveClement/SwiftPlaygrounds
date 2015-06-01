// Playground - noun: a place where people can play

// THIS IS AN OSX PLAYGROUND
import Cocoa
import Foundation

var str = "Hello, playground"
var thisReal = 2.3
let myconst = "Fo real ;)"

thisReal = 3.13333337

let label = "The width is "
let width = 13
let widthLabel = "foo \(label) + \(width + 5)"

var randomList = [ "foo", "bar", "whatever"]

randomList
randomList[1]
randomList[1] = "replacement"
randomList

for stuff in randomList {
    stuff
}

let emptyArray = [String]()
let emptyDict = Dictionary<String, Float>()

var optString: String? =  "Helo"
optString == nil

var optName: String? = "Steve C"
var greeting = "Ehlo!"

optName = nil

if let name = optName {
    greeting = "Ehlo, \(name)"
}
else {
        greeting = "Hi Stranger, please set a name"
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

var n = 2

while n < 100 {
    n = n * 2
}

n

var m = 2
do {
m = m * 2
} while m < 100
m

var firstForLoop = 0
for i in 0...3 {
    firstForLoop += 1
}

firstForLoop

var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
}
secondForLoop

var thirdForLoop = 0
for i in 0...3 {
    thirdForLoop += 1
}

thirdForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
    
}


greet("Steve", "Tuesday")


func getGasPrices() -> (Double, Double, Double) {
return (3.59, 3.69, 3.79)
}


getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
    
}

sumOf()
sumOf(42,432,12312,123123,123,3121,23,312,312)

func returnFifteen() -> Int {
var y = 10
    func add() {
        y += 5
        
    }
add()
    return y
}

returnFifteen()

func makeIncrementer() -> ( Int -> Int) {
func addOne(number: Int) -> Int {
return 1 + number
}
return addOne
}
var increment = makeIncrementer()
increment(7)

let areConstants = "In theory"

var realValue = 0.0

realValue = 13.337

let explicitDouble: Double = 70

let explicitFloat: Float = 4

1 + 2

let dog: Character = "🐶"
let cow: Character = "🐮"
let dogCow = "\(dog)\(cow)"
// dogCow is equal to "🐶🐮"


let dogString = "Dog!🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ")
}
print("\n")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ")
}
print("\n")

//for scalars in dogString.UnicodeScalars {
//    println("\(scalars)")
//}

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

let finalSquare = 25
var board = [Int](count: finalSquare + 1, repeatedValue: 0)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    if ++diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
println("Game over!")

