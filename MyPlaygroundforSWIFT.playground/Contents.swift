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

//------------------------------------------------------------
// 코드 로그 입니다.
// Day 2

//Function in Function (Closure)
func makeIncrementer() -> ((Int)-> Int) {
    func addOne (number: Int) -> Int {
        return number + 1
    }
    return addOne
}

var increment = makeIncrementer()
increment(8)

//a function receives a return value from a function
//as a parameter
// Blocks of codes that call be called later
func hasAnyMatches(list:[Int], condition:(Int)->Bool)->Bool{
    for item in list {
        if condition(item){
            print("conditon true \(item)")
            return true
        }
        print("condition false, and item = \(item)")
    }
    return false
}
func lessThanTen(number: Int)-> Bool{
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

// closure sample with no name
numbers.map({ (number:Int) -> Int in
    let result = 3 * number
    return result
})

let threeTimes = numbers.map({ (number:Int) -> Int in
    let result = 3 * number
    return result
})
print(threeTimes)

//experiment : the closure that returns 0 for all odd numbers in list
numbers.map({ (number:Int) -> Int in
    let result = number % 2
    if result == 0{
        return number
    }
    return 0
})
// when the type of closure is known
let mappedNumbers = numbers.map({ number in 3 * number})
print (mappedNumbers)

// parameters as numbers
let sortedNumbers = numbers.sorted { $0 > $1 }
let sortedNumbers2 = numbers.sorted { $0 < $1 }
print(sortedNumbers)
print(sortedNumbers2)



//------------------------------------------------------------
// 코드 로그 입니다.
// Day 3

//Objects and Classes

class Shape{
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

}



var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription();
print(shapeDescription)



//initializer
//when Initializing the class, the init variables must be declared
class NamedShape {
    var numberOfSides : Int = 0
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    func simpleDescription() -> String{
        return "A Share with\(numberOfSides) sides, and the name is \(name)"
    }
}
var testname = NamedShape(name:"Mike")
print(testname.simpleDescription())


//superclass inherritance
class Square: NamedShape{
    var sideLength: Double
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of lengh \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my Test Square")
print(test.area())
print(test.numberOfSides)
print(test.simpleDescription())


//excercise : area of Circle
class Circle: NamedShape{
    var radius: Double
    let pi: Double = 3.141592
    init(radius: Double, name: String){
        self.radius = radius
        super.init(name:name)
        numberOfSides = 0
    }
    
    func area() -> Double{
        return radius * radius * pi
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius of \(radius)"
    }
}

var testCircle = Circle(radius: 4.0, name: "my Test Circle")
print(testCircle.area())
print(testCircle.simpleDescription())


//getter, setter of properties

class EquilateralTriangle: NamedShape{
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double{
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length\(sideLength)"
    }
}

var triagle = EquilateralTriangle(sideLength: 3.1, name: "a Triagle")
print(triagle.perimeter)
triagle.perimeter = 9.9
print(triagle.sideLength)

class TriangleAndSquare{
    
    var triangle:EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square{
        willSet{
            triagle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "Another Test Shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "Larger Square")
print(triangleAndSquare.triangle.sideLength)
print(triangleAndSquare.square.sideLength)


let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional Square")
let sideLength = optionalSquare?.sideLength
print("optional sidelength = \(sideLength)")


//------------------------------------------------------------
// 코드 로그 입니다.
// Day 4
//Enumerationas and Structures











