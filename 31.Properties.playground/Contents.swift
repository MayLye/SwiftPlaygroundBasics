import Foundation

class Person {
 var name: String = ""  // define two properties
 var age: Int = 0
}
var person1 = Person()
person1.name = "Darling"  // assign values to properties
person1.age = 42
print("Name:", person1.name)  // access properties
print("Age:", person1.age)

// Computed Property
class Calculator {
  var num1: Int = 0 // define two stored properties
  var num2: Int = 0
  var sum: Int {  // define one computed property
    num1 + num2 // calculate value
  }
}
var obj = Calculator()
obj.num1 = 11
obj.num2 = 12
print("Sum:", obj.sum)  // read value of computed property
// sum = num1+num2 = 11+12 = 23

class CalculatorA { // Getters And Setters
  var num1: Int = 0
  var num2: Int = 0
  var sumA: Int { // create computed property
    get { // retrieve value
      num1 + num2
    }
    set(modify) { // set new value to num1 and num2
      num1 = (modify + 10)
      num2 = (modify + 20)
    }
  }
}
var objA = CalculatorA()
objA.num1 = 20
objA.num2 = 50
print("Get value:", objA.sumA) // get value
// objA.sumA=objA.num1+objA.num2=20+50=70
objA.sumA = 5 // provide value to (modify)
// modify = objA.sumA
// num1 = modify + 10 = 5 + 10 = 15
// num2 = modify + 20 = 5 + 20 = 25
print("New num1 value:", objA.num1)
print("New num2 value:", objA.num2)

// static Property
class University {
 static var name: String = "" // static property
 var founded: Int = 0 // non-static property
}
var objB = University() // create an object
University.name = "ABC University" // assign value (static)
print(University.name)
objB.founded = 1991 // assign value (non-static)
print(objB.founded)
