@testable import mob_playingcard
import XCTest
import Rainbow

class SuitTests: XCTestCase {
    
    func testSuitStringEquality() {
        XCTAssertEqual(String(describing: Suit.spades), "♤".black.bold)
        XCTAssertEqual(String(describing: Suit.hearts), "♡".red.bold)
        XCTAssertEqual(String(describing: Suit.diamonds), "♢".red.bold)
        XCTAssertEqual(String(describing: Suit.clubs), "♧".black.bold)
    }
    
    func testSuitComparable() {
        XCTAssertGreaterThan(Suit.spades, Suit.diamonds)
        XCTAssertGreaterThan(Suit.hearts, Suit.diamonds )
        XCTAssertGreaterThan(Suit.hearts, Suit.clubs)
        XCTAssertGreaterThan(Suit.diamonds, Suit.clubs)
    }
    
}
