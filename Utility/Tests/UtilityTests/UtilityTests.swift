import XCTest
@testable import Utility

final class UtilityTests: XCTestCase {
  func testUseCoalesceDefaultValue() {
    let target: Int? = nil
    let result = coalesce(1)(target)
    XCTAssertNotNil(result)
  }
  
  func testNotUseCoalesceDefaultValue() {
    let target: Int? = 3
    let result = coalesce(1)(target)
    XCTAssertEqual(target, result)
  }
}
