import Rainbow

// 花色枚举
public enum Suit: String {
    case spades, hearts, diamonds, clubs
}

// MARK: - Comparable

extension Suit: Comparable {
    static public func <(lhs: Suit, rhs: Suit) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs.rawValue == rhs.rawValue:
            return false
        case (.spades, _), (.hearts, .diamonds), (.hearts, .clubs), (.diamonds, .clubs):
            return false
        default:
            return true
        }
    }
}

// MARK: - CustomStringConvertible

extension Suit: CustomStringConvertible {
    public var description: String {
        switch self {
        case .spades:
            return "♤".black.bold
        case .hearts:
            return "♡".red.bold
        case .diamonds:
            return "♢".red.bold
        case .clubs:
            return "♧".black.bold
        }
    }
}
