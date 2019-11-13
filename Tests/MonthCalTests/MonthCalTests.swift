import XCTest
@testable import MonthCal

final class MonthCalTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MonthCal().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
