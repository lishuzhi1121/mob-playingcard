@testable import mob_playingcard
import XCTest
import Rainbow

class RankTests: XCTestCase {
    func testRankComparable() {
        XCTAssertGreaterThan(Rank.ace, Rank.king)
        XCTAssertGreaterThan(Rank.three, Rank.two)
        XCTAssertGreaterThan(Rank.queen, Rank.jack)
    }
    
    func testRankStringEquality() {
        let nums = [2, 3, 4, 5, 6, 7, 8, 9, 10]
        let suits = nums.map{Rank(rawValue: $0)}.flatMap{$0}.map{Int(String(describing: $0).clearStyles) ?? 0}
        
        XCTAssertEqual(nums, suits)
        XCTAssertEqual(String(describing: Rank.ace), "A".bold)
        XCTAssertEqual(String(describing: Rank.jack), "J".bold)
        XCTAssertEqual(String(describing: Rank.queen), "Q".bold)
        XCTAssertEqual(String(describing: Rank.king), "K".bold)
    }
}
