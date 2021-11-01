import Foundation

// public Access Control:  can access them from anywhere
class Animal {
  public var legCount: Int = 0 // public property
  public func display() { // public method
    print("I am an animal.");
    print("Total Legs:", legCount)
  }
}
var obj = Animal() // create an object
obj.legCount = 4 // access and assign value to public property
obj.display()

// private Access Control: can only be accessed within the same class or struct
/*
class Student {
  private var name = "Tim Cook" // private property
  private func display() { // private method
    print("Hello from Student class")
  }
}
var student1 = Student()
print("Name:", student1.name)
student1.print();
 */

// fileprivate Access Control: it can only be accessed within the defined source file
class Student {
  fileprivate var name = "Tim Cook" // fileprivate property
  fileprivate func display() { // fileprivate method
    print("Hello from Student class")
  }
}
var student1 = Student()
print("Name:", student1.name) // access name property
student1.display() // access display method

// internal Access Control: it can be accessed only within the same module.
class Student2 {
  internal var name = "Tim Cook" // define internal property
}
var student2 = Student2() // create object
print("Name:", student2.name) // access name property
