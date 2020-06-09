import SwiftSnippets
import XCTest

class Bool_extension_test: XCTestCase {
  
  func test_mapIfTrueIfFalse() {
    XCTAssertEqual(true.map(ifTrue: { return "true" }, ifFalse: { return "false" }), "true")
    XCTAssertEqual(false.map(ifTrue: { return "true" }, ifFalse: { return "false" }), "false")
  }

  func test_optionalMapIfTrueIfFalse() {
    XCTAssertEqual(true.map(ifTrue: { return "true" }, ifFalse: { return nil }), Optional("true"))
    XCTAssertEqual(true.map(ifTrue: { return nil }, ifFalse: { return "false" }), Optional(nil))
    XCTAssertEqual(false.map(ifTrue: { return "true" }, ifFalse: { return nil }), Optional(nil))
    XCTAssertEqual(false.map(ifTrue: { return nil }, ifFalse: { return "false" }), Optional("false"))
  }

  func test_mapIfTrue() {
    XCTAssertEqual(true.map(ifTrue: { return "true" }), "true")
    XCTAssertEqual(false.map(ifTrue: { return "true" }), nil)
  }

  func test_mapIfFalse() {
    XCTAssertEqual(true.map(ifFalse: { return "false" }), nil)
    XCTAssertEqual(false.map(ifFalse: { return "false" }), "false")
  }
}
