import UIKit

//var greeting = "Hello, playground"

var greeting: String
greeting = "Hi"
print(greeting)
greeting = "Hello"
print(greeting)

let a: Float = 1.0

struct Person{
    var name: String
}

var p1 = Person(name: "Felipe")
print(p1.name)

typealias Coordinate = (x: Int, y: Int)

var coordinates: Coordinate = (x:0, y:1)

print(coordinates)

func addNumbers(number1: Int, number2: Int){
    print(number1 + number2)
}

addNumbers(number1: 1, number2: 2)

enum CompassPoint {
    case north, south, east, west
}

var directionToHead = CompassPoint.west
//directionToHead = .south
print("We are going:")
switch directionToHead {
    case .north:
        print("north")
    case .south:
        print("south")
    case .east:
        print("east")
    case .west:
        print("west")
}


class Human {
    var firstName: String
    var lastName: String
    var age: Int
    
    init() {
        firstName = "Felipe"
        lastName = "Lima"
        age = 22
    }
}
let h1 = Human()

print("Hello! My name is", h1.firstName, h1.lastName, "and I am", h1.age, "years old.")

var arr = [9,8,7,6,5,4,3,2,1,0]
print(arr[2])

var arr2 = ["ab", "cd"]
print(arr2[0])
arr2.append("aesdf")
print(arr2)


func f1(a: Int) -> Int {
    return a
}

var xs = f1(a: 4)
print(xs)
