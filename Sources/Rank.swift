import Rainbow

// 点数枚举
public enum Rank: Int {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

// MARK: - Comparable

extension Rank: Comparable {
    static public func <(lhs: Rank, rhs: Rank) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs == rhs:
            return false
        case (.ace, _):
            return false
        default:
            return lhs.rawValue < rhs.rawValue
        }
    }
}

// MARK: - CustomStringConvertible

extension Rank: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ace:
            return "A".bold
        case .jack:
            return "J".bold
        case .queen:
            return "Q".bold
        case .king:
            return "K".bold
        default:
            return "\(rawValue)".bold
        }
    }
}
