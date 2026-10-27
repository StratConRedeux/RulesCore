/// A square-grid position on a map.
public struct GridPosition: Hashable, Sendable {
    public var x: Int
    public var y: Int

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    /// The four orthogonally adjacent positions.
    public var neighbors: [GridPosition] {
        [
            GridPosition(x: x + 1, y: y),
            GridPosition(x: x - 1, y: y),
            GridPosition(x: x, y: y + 1),
            GridPosition(x: x, y: y - 1),
        ]
    }

    /// Manhattan distance to another position.
    public func distance(to other: GridPosition) -> Int {
        abs(x - other.x) + abs(y - other.y)
    }
}
