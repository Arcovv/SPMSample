import XCTest
@testable import Model

final class ModelTests: XCTestCase {
  func testDogModel() {
    let dog = Dog(name: "Jack", age: 8)
    XCTAssertEqual(dog.name, "Jack")
    XCTAssertEqual(dog.age, 8)
  }
  
  func testDogFactoryGenerate5DogCount() {
    var dogs = [Dog]()
    var index = 0
    let goalCount = 2
    
    let expect = expectation(description: #function)
    let factory = DogFactory()
    factory.generateCallback = { dog in
      dogs.append(dog)
      
      if index == goalCount - 1 {
        XCTAssertEqual(dogs.count, goalCount)
        expect.fulfill()
      }
      
      index += 1
    }

    wait(for: [expect], timeout: Double(goalCount))
  }
}
