//: Playground - noun: a place where people can play

import UIKit

//Simple Values
//decraring variables
var str = "Hello, playground"
let implictInteger = 80
let explicit:Double = 80
let explicit1: Float = 80

let label = "the width is"
let width = 83
let widthLabel = label + String(width)

print("hello world")

let apples = 3
let oranges = 4

let applesSummary = "I have \(8.0) apples"
let fruitSummary = "I have \(8.0 + 10.0) pieces of fruit"

//array and dictionary
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic",
]
occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String:Float]()

//Control Flow
//for loop & if else
let individualScores = [12, 14, 25, 34, 134]
var teamScore = 0
for score in individualScores {
    if score > 30 {
        teamScore+=3
    } else {
        teamScore+=1
    }
}
print(teamScore)

//optional variable
var optionalString: String? = "Hello"
print(optionalString == nil)
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"

if let name = optionalName {
    greeting = "hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

//switch
let vegetable = "red pepper"
switch vegetable{
case "celery":
    print("wawa")
case "cucumber", "watercress":
    print("wwwwww")
case let x where x.hasSuffix("pepper"):
    print("wow found red pepper")
default:
    print("default")
}

//dictionary
let interestingNumbers = [
    "prime":[2,3,5,7,11,13],
    "fibonacci":[1,1,2,3,5,8],
    "square":[1,4,9,16,25],
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
        print(kind + ":" + String(largest))
    }
}
print(largest)


//while
var n=2
while n<100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100

print (m)

// range
var total = 0

// .. vs =< ...
for i in 0..<4 {
    total += i
    print (total)
}
print (total)

//function and Closure
//function
func greet(person: String, day: String) -> String {
    return "Hello \(person), Today is \(day)."
}
greet(person: "Bob", day: "Friday")

func greetWithSpecial(person: String, special: String)->String{
    return "Hello \(person), Today's Lunch Special is \(special)."
}
greetWithSpecial(person: "Mike", special: "Meat Balls")

// _ <-- 추가 하여 함수 호출 시 argument label 를 쓰지 않게 한다.
func greet(_ person: String, day: String) -> String {
    return "Hello \(person), Today is \(day)."
}
greet("Sam", day: "Saturday")


//tuple , returns multiple results
func calculateStatistics(scores:[Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [1,2,3,4,5,6,7,8,9,10])
print(statistics.min)
print(statistics.max)
print(statistics.sum)
print(statistics.0)
print(statistics.1)
print(statistics.2)

func sumOf(numbers: Int...)-> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(numbers: 1,2,3,4,5,6,7,8,9,10)

//experiment
func averageOf(numbers: Double...)-> Double{
    var average : Double = 0.0
    var counter : Double = 0.0
    var sum : Double = 0.0
    
    for number in numbers {
        sum += number
        counter += 1.0
    }
    if counter != 0.0 {
        average = sum / counter
    } else {
        average = 0.0
    }
    
    print("Sum = \(sum)")
    print("counter = \(counter)")
        
    return average
}

averageOf()
averageOf(numbers: 1,2,3,4,5,6,7,8,9,10)

func returnFifteen() -> Int{
    var y = 10
    
    func add(){
        y+=5
    }
    add()
    return y
}

returnFifteen()

