import Testing
@testable import RulesCore

@Test func distanceIsManhattan() {
    let a = GridPosition(x: 0, y: 0)
    let b = GridPosition(x: 3, y: -2)
    #expect(a.distance(to: b) == 5)
    #expect(a.neighbors.allSatisfy { $0.distance(to: a) == 1 })
}
