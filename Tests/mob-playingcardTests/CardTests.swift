@testable import mob_playingcard
import XCTest
import Rainbow

class CardTests: XCTestCase {
    
    func testCardSingle() {
        let card1 = PlayingCard(rank: .king, suit: .diamonds)
        let card2 = PlayingCard(rank: .queen, suit: .diamonds)
        let card3 = PlayingCard(rank: .king, suit: .hearts)
        let card4 = PlayingCard(rank: .queen, suit: .spades)
        let card5 = PlayingCard(rank: .ace, suit: .clubs)
        
        XCTAssertGreaterThan(card1, card2)
        XCTAssertGreaterThan(card3, card1)
        XCTAssertGreaterThan(card4, card2)
        XCTAssertGreaterThan(card5, card3)
    }
    
    func testCardStringEquality() {
        let card1 = PlayingCard(rank: .jack, suit: .clubs)
        let card2 = PlayingCard(rank: .two, suit: .hearts)
        let card3 = PlayingCard(rank: .queen, suit: .diamonds)
        
        XCTAssertEqual(String(describing: card1), "♧".black.bold + " " + "J".bold)
        XCTAssertEqual(String(describing: card2), "♡".red.bold + " " + "2".bold)
        XCTAssertEqual(String(describing: card3), "♢".red.bold + " " + "Q".bold)
    }
}
